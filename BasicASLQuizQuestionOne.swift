//
//  BasicASLQuizQuestionOne.swift
//  finalPproject
//
//  Created by Reva Choudha on 7/31/24.
//

import SwiftUI

struct BasicASLQuizQuestionOne: View {
    @State private var answer = ""
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 248/255, green: 247/255, blue: 1).ignoresSafeArea()
                VStack {
                    Text("What does this sign mean?")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 102/255, green: 103/255, blue: 191/255))
                    
                    Text("Choose the word that matches the sign below:")
                        .font(.callout)
                        .foregroundColor(Color(hue: 0.664, saturation: 0.345, brightness: 0.786))
                    
                    Image("HelloSign").resizable().foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0)).scaledToFit().frame(width: 300, height: 300).padding()
                    
                    Button(action: {
                        answer = "falseThankYou"
                    }) {
                        HStack {
                            Text("Thank you")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            if answer == "falseThankYou" {
                                Text ("❌  Try again!")
                                    .font(.body)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(red: 0.83, green: 0.005, blue: 0.005))
                            }
                        }
                        .padding()
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 230/255, green: 228/255, blue: 242/255))
                    .foregroundColor(Color(red: 102/255, green: 103/255, blue: 191/255))
                    .padding(.horizontal, 25.0)
                    .controlSize(.large)
                    .frame(maxWidth: .infinity)
                    
                    Button(action: {
                        answer = "trueHello"
                    }) {
                        HStack {
                            Text("Hello")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            if answer == "trueHello" {
                                Text("✅ Good Job!")
                                    .font(.body)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(red: -0.024, green: 0.717, blue: 0.003))
                            }
                        }
                        .padding()
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 230/255, green: 228/255, blue: 242/255))
                    .foregroundColor(Color(red: 102/255, green: 103/255, blue: 191/255))
                    .padding(.horizontal, 25.0)
                    .controlSize(.large)
                    .frame(maxWidth: .infinity)
                    
                    Button(action: {
                        answer = "falseYes"
                    }) {
                        HStack {
                            Text("Yes")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            if answer == "falseYes" {
                                Text ("❌  Try again!")
                                    .font(.body)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(red: 0.83, green: 0.005, blue: 0.005))
                            }//end of if
                        }//enf of HStack
                        .padding()
                    }//end of third button
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 230/255, green: 228/255, blue: 242/255))
                    .foregroundColor(Color(red: 102/255, green: 103/255, blue: 191/255))
                    .padding(.horizontal, 25.0)
                    .controlSize(.large)
                    .frame(maxWidth: .infinity)//end of third button modifiers
                
                    NavigationLink(destination: BasicASLQuizQuestionTwo()) {
                        Text("Next Question →")
                            .foregroundColor(Color(red: 147/255, green: 129/255, blue: 1))
                            .multilineTextAlignment(.trailing)
                    }//end of navigationLink
                }//end of VStack
            }//end of ZStack
        }.tint(Color(red: 147/255, green: 129/255, blue: 1))//end of Navigation Stack
    }
}

#Preview {
    BasicASLQuizQuestionOne()
}
