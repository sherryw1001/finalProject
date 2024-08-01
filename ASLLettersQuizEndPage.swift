//
//  ASLLettersQuizEndPage.swift
//  finalPproject
//
//  Created by Reva Choudha on 8/1/24.
//

import SwiftUI

struct ASLLettersQuizEndPage: View {
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
                    
                    //DON'T FORGET TO CHANGE THE DESTINATION!!! (and maybe change the style of this button??)
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
    ASLLettersQuizEndPage()
}