//
//  DailyChallengeEndPage.swift
//  finalPproject
//
//  Created by Reva Choudha on 11/29/24.
//

import SwiftUI

struct DailyChallengeEndPage: View {
    @State var finalScore: Int
    
    
    init(score: Int) {
        self.finalScore = score
        StateManagement.shared.setChallenge(score)
    }
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 248/255, green: 247/255, blue: 1).ignoresSafeArea()
                VStack {
                    Text("Great job!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 102/255, green: 103/255, blue: 191/255))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Text(String(format: "Score: %d", finalScore))
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 102/255, green: 103/255, blue: 191/255))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Text(String(format: "Your new streak: %d", StateManagement.shared.getCurrentStreak()))
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 102/255, green: 103/255, blue: 191/255))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Text(String(format: "Diamond count: %d", StateManagement.shared.getDiamondCount()))
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 102/255, green: 103/255, blue: 191/255))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    NavigationLink(destination: HomePage()) {
                        Text("Return to Home Page  ")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .padding(10)
                            .background(Color(red: 147/255, green: 129/255, blue: 1))
                            .foregroundColor(Color(red: 248/255, green: 247/255, blue: 1))
                            .cornerRadius(15)
                        
                    }
                }
                
            }
        }.tint(Color(red: 147/255, green: 129/255, blue: 1))
    }
}

#Preview {
    DailyChallengeEndPage(score: 0)
}
