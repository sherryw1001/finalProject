//
//  BasicASLQuizStartPage.swift
//  finalPproject
//
//  Created by Reva Choudha on 7/31/24.
//

import SwiftUI

struct BasicASLQuizStartPage: View {
    let bgColor = Color(red: 248/255, green: 247/255, blue: 1)
    let darkPurple = Color(red: 102/255, green: 103/255, blue: 191/255)
    let lightPurple = Color(red: 147/255, green: 129/255, blue: 1)
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
                    NavigationLink(destination: BasicASLQuizQuestionOne()) {
                        Text("Start!   ")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .padding(3)
                            .background(lightPurple)
                            .foregroundColor(bgColor)
                            .cornerRadius(10)
                        
                    }
                }
                
            }
        }.tint(Color(red: 147/255, green: 129/255, blue: 1))
        
        
    }
}

#Preview {
    BasicASLQuizStartPage()
}
