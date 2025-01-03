//
//  DailyChallengeStartPage.swift
//  finalPproject
//
//  Created by Reva Choudha on 12/30/24.
//

import SwiftUI

struct DailyChallengeStartPage: View {
    let bgColor = Color(red: 248/255, green: 247/255, blue: 1)
    let darkPurple = Color(red: 102/255, green: 103/255, blue: 191/255)
    let lightPurple = Color(red: 147/255, green: 129/255, blue: 1)
    
    init(){
        StateManagement.shared.generateQuiz(8, domain: 2)
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                bgColor.ignoresSafeArea()
                VStack {
                    Text("Test Your ASL \n Knowledge")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(darkPurple)
                        .multilineTextAlignment(.center)
                        .padding()
                    NavigationLink(destination: DailyChallengeQuestion()) {
                        Text("Start!   ")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .padding(7)
                            .background(lightPurple)
                            .foregroundColor(bgColor)
                            .cornerRadius(12)
                        
                    }
                }
                
            }
        }.tint(Color(red: 147/255, green: 129/255, blue: 1))
        
        
    }
}

#Preview {
    DailyChallengeStartPage()
}
