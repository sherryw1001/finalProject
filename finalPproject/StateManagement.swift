//
//  StateManagement.swift
//  finalPproject
//
//  Created by Reva Choudha on 10/28/24.
//

import Foundation

class StateManagement {
    var dailyChallengeScore: Int = 0
    var streak: Int = 0
    var longestStreak: Int = 0
    var diamonds: Int = 0
    var lastChallengeDate: Date
    static let letters: Dictionary <String, String> = ["A": "A", "B": "B", "C": "C", "D": "D", "E": "E", "F": "F", "G": "G", "H": "H", "I": "I", "J": "J", "K": "K", "L": "L", "M": "M", "N": "N", "O": "O", "P": "P", "Q": "Q", "R": "R", "S": "S", "T": "T", "U": "U", "W": "W", "X": "X", "Y":
                                    "Y", "Z": "Z"]
    static let words: Dictionary <String, String> = ["Hello": "Hello", "Please": "Please", "ThankYou": "Thank You", "Yes": "Yes", "YoureWelcome": "You're Welcome", "Sorry": "Sorry", "No": "No", "ILoveYou": "I Love You", "Goodbye": "Goodbye"]
    var quiz: [Pair<String, Dictionary<String, String>.Element>]
    let defaults = UserDefaults.standard
    var lastDiamondDate: Date
    
    static let shared = StateManagement()
    
    private init(){
        lastChallengeDate = Calendar.current.date(byAdding: .day, value: -1, to: Date.now)!
        lastDiamondDate = Calendar.current.date(byAdding: .day, value: -1, to: Date.now)!
        if let savedChallengeDate = defaults.string(forKey: "lastChallengeDate") {
            let dateformatter = ISO8601DateFormatter()
            lastChallengeDate = dateformatter.date(from: savedChallengeDate)!
        }
        streak = defaults.integer(forKey: "streak")
        longestStreak = defaults.integer(forKey: "longestStreak")
        dailyChallengeScore = defaults.integer(forKey: "challengeScore")
        diamonds = defaults.integer(forKey: "diamonds")
        quiz = []
        generateQuiz(2, domain: 2)
    }
    
    func getValue(_ type: Int) -> Pair<String, Dictionary<String, String>.Element> {
        if type == 0 {
            return Pair(first:"letter", second:StateManagement.letters.randomElement()!)
        }
        return Pair(first:"word", second:StateManagement.words.randomElement()!)
    }
    
    func generateQuiz(_ size: Int, domain: Int) {
        quiz = []
        for _ in 0...size {
            if (domain == 2){
                quiz.append(getValue(Int.random(in: 0...2)))
            }
            else {
                quiz.append(getValue(domain))
            }
        }
    }
    
    func getLongestStreak()-> Int {
        return longestStreak
    }
    
    func setChallenge(_ score: Int) {
        dailyChallengeScore = score
        if (Calendar.current.dateComponents([.minute], from: lastDiamondDate).minute != Calendar.current.dateComponents([.minute], from: Date.now).minute){
            diamonds += score
        }
        if (Calendar.current.dateComponents([.day], from: lastChallengeDate).day != Calendar.current.dateComponents([.day], from: Date.now).day){
            streak += 1
        }
        let currentDate = Calendar.current.date(byAdding: .day, value: -1, to: Date.now)!
        print(lastChallengeDate)
        if (lastChallengeDate.compare(currentDate) == ComparisonResult.orderedAscending) {
            if (streak > longestStreak) {
                longestStreak = streak
            }
            streak = 1
        }
        lastChallengeDate = Date.now
        lastDiamondDate = Date.now
        
        defaults.set(dailyChallengeScore, forKey: "challengeScore")
        defaults.set(diamonds, forKey: "diamonds")
        let dateformatter = ISO8601DateFormatter()
        defaults.set(dateformatter.string(from: lastChallengeDate), forKey: "lastChallengeDate")
        defaults.set(streak, forKey: "streak")
        defaults.set(longestStreak, forKey: "longestStreak")
    }
    
    func getCurrentStreak()-> Int{
        return streak
    }
    func getDiamondCount()-> Int{
        return diamonds
    }
}
