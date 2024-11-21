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
<<<<<<< Updated upstream
    static let letters: [String] = ["G", "L", "R", "T", "Y", "A"]
    static let words: [String] = ["Hello", "Please", "ThankYou", "Yes"]
    var quiz: [Pair<String, String>]
=======
    var quiz: [Character]
    var challenge: [String]
    let defaults = UserDefaults.standard
    
    static let challengeValues: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "W", "X", "Y", "Z", "Hello", "Please", "ThankYou", "Yes", "YoureWelcome", "Sorry", "No", "ILoveYou", "Goodbye"]
    
    static let lettersQuizValues: [Character] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "W", "X", "Y", "Z"]
>>>>>>> Stashed changes
    
    init(){
        lastChallengeDate = Date.now
        if let savedChallengeDate = defaults.string(forKey: "lastChallengeDate") {
            let dateformatter = ISO8601DateFormatter()
            lastChallengeDate = dateformatter.date(from: savedChallengeDate)!
        }
        streak = defaults.integer(forKey: "streak")
        longestStreak = defaults.integer(forKey: "longestStreak")
        quiz = []
        challenge = []
    }
    
    init(challengeDate: Date) {
        lastChallengeDate = challengeDate
        quiz = []
        challenge = []
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
