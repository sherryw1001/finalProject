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
    
    init(){
        lastChallengeDate = Date.now
        if let savedChallengeDate = defaults.string(forKey: "lastChallengeDate") {
            let dateformatter = ISO8601DateFormatter()
            lastChallengeDate = dateformatter.date(from: savedChallengeDate)!
        }
        streak = defaults.integer(forKey: "streak")
        longestStreak = defaults.integer(forKey: "longestStreak")
        quiz = []
    }
    
    init(challengeDate: Date) {
        lastChallengeDate = challengeDate
        quiz = []
    }
    
    func getValue(_ type: Int) -> Pair<String, String> {
        if type == 0 {
            return Pair(first:"letter", second:StateManagement.letters[Int.random(in:0...StateManagement.letters.count)])
        }
        return Pair(first:"word", second:StateManagement.words[Int.random(in:0...StateManagement.words.count)])
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
    
    func setChallenge() {
        lastChallengeDate = Date.now
        streak += 1
    }
    
    func getCurrentStreak()-> Int{
        let currentDate = Calendar.current.date(byAdding: .day, value: -1, to: Date.now)!
        if (lastChallengeDate.compare(currentDate) == ComparisonResult.orderedAscending) {
            if (streak > longestStreak) {
                longestStreak = streak
            }
            streak = 0
        }
        
        
        return streak
    }
}
