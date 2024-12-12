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
    static let letters: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "W", "X", "Y", "Z"]
    static let words: [String] = ["Hello", "Please", "ThankYou", "Yes", "YoureWelcome", "Sorry", "No", "ILoveYou", "Goodbye"]
    var quiz: [Pair<String, String>]
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
    
    func getValue(_ type: Int) -> Pair<String, String> {
        if type == 0 {
            return Pair(first:"letter", second:StateManagement.letters[Int.random(in:0..<StateManagement.letters.count)])
        }
        return Pair(first:"word", second:StateManagement.words[Int.random(in:0..<StateManagement.words.count)])
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
