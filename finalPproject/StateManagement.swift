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
    static let letters: [String] = ["G", "L", "R", "T", "Y", "A"]
    static let words: [String] = ["Hello", "Please", "ThankYou", "Yes"]
    var quiz: [Pair<String, String>]
    
    init(){
        lastChallengeDate = Date.now
    }
    
    init(challengeDate: Date) {
        lastChallengeDate = challengeDate
    }
    
    func generateQuiz(_ size: Int) {
        quiz = []
        for i in 0...size {
            let selection = Int.random(in: 0...2)
            if selection == 0 {
                quiz.append(Pair(first:"letter", second:StateManagement.letters[Int.random(in:0...StateManagement.letters.count)]))
            }
            else{
                quiz.append(Pair(first:"word", second:StateManagement.words[Int.random(in:0...StateManagement.words.count)]))

            }
        }
    }
    
    func getLongestStreak()-> Int {
        return longestStreak
    }
    
    func getCurrentStreak()-> Int{
        var currentDate = Calendar.current.date(byAdding: .day, value: -1, to: Date.now)!
        if (lastChallengeDate.compare(currentDate) == ComparisonResult.orderedAscending) {
            if (streak > longestStreak) {
                longestStreak = streak
            }
            streak = 0
        }
        
        return streak
    }
}
