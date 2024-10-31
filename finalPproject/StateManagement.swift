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
    
    init(){
        lastChallengeDate = Date.now
    }
    
    init(challengeDate: Date) {
        lastChallengeDate = challengeDate
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
