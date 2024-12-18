//
//  ASLLettersQuizQuestion.swift
//  finalPproject
//
//  Created by Reva Choudha on 10/31/24.
//


//
//  ASLLettersQuizQuestion.swift
//  finalPproject
//
//  Created by Reva Choudha on 8/1/24.
//

import SwiftUI

struct DailyChallengeQuestion: View {
    
    @State private var questionNum: Int
    @State private var currentScore: Int
    @State private var sign: String
    @State private var signValue: Dictionary<String, String>.Element
    @State private var signValues: [Dictionary<String, String>.Element]
    @State private var answer: [String]
    @State private var selected: Int
    
    init(number: Int = 0, score: Int = 0) {
        var strings: [Dictionary<String, String>.Element]
        questionNum = number
        currentScore = score
        var tempString: Dictionary<String, String>.Element
        var tempStrings: [Dictionary<String, String>.Element]
        answer = [" ", " ", " "]
        tempString = StateManagement.shared.quiz[number].second // 65 = A 91 = Z
        if (StateManagement.shared.quiz[number].first == "letter"){
            strings = StateManagement.letters.shuffled()
        }
        else {
            strings = StateManagement.words.shuffled()
        }
        strings = strings.filter{$0 != tempString}
        sign = "\(tempString.key)Sign"
        tempStrings = [tempString, strings[1], strings[2]].shuffled()

        signValue = tempString
        signValues = tempStrings
        selected = -1
    }

    

    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 248/255, green: 247/255, blue: 1).ignoresSafeArea()
                VStack {
                    Text("What does this sign mean?")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 102/255, green: 103/255, blue: 191/255))
                    
                    Text("Choose best meaning of the sign below:")
                        .font(.callout)
                        .foregroundColor(Color(hue: 0.664, saturation: 0.345, brightness: 0.786))
                    
                    Image(sign).resizable().foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0)).scaledToFit().frame(width: 300, height: 300).padding()
                    
                    ForEach(0...2, id: \.self) { char in
                      Button(action: {
                          if (selected == -1){
                              if (signValues[char].key == signValue.key){
                                  currentScore += 1
                              }
                              selected = char
                          }
                      }) {
                          HStack {
                              Text(String(signValues[char].value))
                                  .font(.title3)
                                  .fontWeight(.semibold)
                                  .frame(maxWidth: .infinity, alignment: .leading)
                              if selected == char && signValues[char] == signValue {
                                Text("✅ Good Job!")
                                    .font(.body)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(red: -0.024, green: 0.717, blue: 0.003))
                                
                              } else if (selected == char ){
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
                    }

                    if (StateManagement.shared.quiz.count > questionNum + 1) {
                        NavigationLink(destination: DailyChallengeQuestion(number: questionNum + 1, score: currentScore)) {
                            Text("Next Question →")
                                .foregroundColor(Color(red: 147/255, green: 129/255, blue: 1))
                                .multilineTextAlignment(.trailing)
                        }//end of navigationLink
                    } else {
                      NavigationLink(destination: DailyChallengeEndPage(score: currentScore)) {
                          Text("Complete Quiz →")
                              .foregroundColor(Color(red: 147/255, green: 129/255, blue: 1))
                              .multilineTextAlignment(.trailing)
                      }//end of navigationLink
                    }
                }//end of VStack
            }//end of ZStack
        }.tint(Color(red: 147/255, green: 129/255, blue: 1))//end of Navigation Stack
    }
}

#Preview {
    ASLLettersQuizQuestionOne()
}
