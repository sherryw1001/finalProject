//
//  alphabetQuiz.swift
//  finalPproject
//
//  Created by Summer on 7/31/24.
//

import SwiftUI

struct alphabetQuiz: View {
    let bgColor = Color(red: 248/255, green: 247/255, blue: 1)
    let darkPurple = Color(red: 102/255, green: 103/255, blue: 191/255)
    let lightPurple = Color(red: 147/255, green: 129/255, blue: 1)
    @State var quizManager: StateManagement
    
    init(){
        quizManager = StateManagement()
        quizManager.quiz = Array(StateManagement.lettersQuizValues.shuffled()[0...8])
    }
    var body: some View {
        NavigationStack {
            ZStack {
                bgColor.ignoresSafeArea()
                VStack {
                    Text("Test Your Knowledge \n of ASL Letters")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(darkPurple)
                        .multilineTextAlignment(.center)
                        .padding()
                    NavigationLink(destination: ASLLettersQuizQuestion(state: quizManager)) {
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
    alphabetQuiz()
}
