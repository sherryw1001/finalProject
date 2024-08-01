//
//  ASLLettersQuizQuestionSix.swift
//  finalPproject
//
//  Created by Reva Choudha on 8/1/24.
//

import SwiftUI

struct ASLLettersQuizQuestionSix: View {
    
    @State private var answer = ""
    @State private var message = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 248/255, green: 247/255, blue: 1).ignoresSafeArea()
                VStack {
                    Text("What letter is this sign?")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 102/255, green: 103/255, blue: 191/255))
                    
                    Text("Type the letter in the box below:")
                        .font(.callout)
                        .foregroundColor(Color(hue: 0.664, saturation: 0.345, brightness: 0.786))
                    
                    Image("RSign")
                        .resizable()
                        .scaledToFit().frame(width: 300, height: 300).padding()
                    
                    TextField("Type answer here", text: $answer)
                        .multilineTextAlignment(.center)
                        .frame(height: 31.0)
                        .border(Color.gray, width: 1)
                        .padding(.horizontal, 80.0)
                    
                    Button("Submit") {
                        if answer == "R" || answer == "r" {
                            message = "✅ Good Job!"
                        }
                        else {
                            message = "❌  Try again!"
                        }
                    }
                    .font(.body)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 147/255, green: 129/255, blue: 1))
                    .padding()
                    
                    if message == "✅ Good Job!" {
                        Text("✅ Good Job!")
                            .font(.body)
                            .fontWeight(.regular)
                            .foregroundColor(Color(red: -0.024, green: 0.717, blue: 0.003))
                    }
                    
                    else if message == "❌  Try again!" {
                        Text("❌  Try again!")
                            .font(.body)
                            .fontWeight(.regular)
                            .foregroundColor(Color(red: 0.83, green: 0.005, blue: 0.005))
                    }
                    
                    NavigationLink(destination: ASLLettersQuizEndPage()) {
                        Text("End Quiz →")
                            .foregroundColor(Color(red: 147/255, green: 129/255, blue: 1))
                            .multilineTextAlignment(.trailing)
                            .padding()
                    }//end of navigationLink
                }//end of VStack
            }//end of ZStack
        }//end of Navigation Stakc
    }
}

#Preview {
    ASLLettersQuizQuestionSix()
}
