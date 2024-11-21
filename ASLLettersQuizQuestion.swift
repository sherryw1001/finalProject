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

struct ASLLettersQuizQuestion: View {
    
    @State private var stateSystem: StateManagement?
    @State private var questionNum: Int
    @State private var currentScore: Int
    @State private var sign: String
    @State private var letter: Character
    @State private var letters: [Character]
    @State private var answer: [Character]
    
    init(number: Int = 0, score: Int = 0, state: StateManagement? = nil) {
        var characters = StateManagement.lettersQuizValues.shuffled()
        stateSystem = state
        questionNum = number
        currentScore = score
        var tempLetter: Character
        var tempLetters: [Character]
        answer = [" ", " ", " "]
      
        
      if(state == nil) {
          tempLetter = characters[0] // 65 = A 91 = Z
      } else {
        tempLetter = state!.quiz[number] // 65 = A 91 = Z
          characters = characters.filter{$0 != tempLetter}
      }
      sign = "\(tempLetter)Sign"
        tempLetters = [tempLetter, characters[1], characters[2]].shuffled()

        letter = tempLetter
        letters = tempLetters
    }

    

    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 248/255, green: 247/255, blue: 1).ignoresSafeArea()
                VStack {
                    Text("What letter is this sign?")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 102/255, green: 103/255, blue: 191/255))
                    
                    Text("Choose the letter that matches the sign below:")
                        .font(.callout)
                        .foregroundColor(Color(hue: 0.664, saturation: 0.345, brightness: 0.786))
                    
                    Image(sign).resizable().foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0)).scaledToFit().frame(width: 300, height: 300).padding()
                    
                    ForEach(0...2, id: \.self) { char in
                      Button(action: {
                          answer = [" ", " ", " "]
                          answer[char] = letters[char]
                          if (answer[char] == letter){
                              currentScore += 1
                          }
                      }) {
                          HStack {
                              Text(String(letters[char]))
                                  .font(.title3)
                                  .fontWeight(.semibold)
                                  .frame(maxWidth: .infinity, alignment: .leading)
                              if answer[char] != " " && answer[char] == letter {
                                Text("✅ Good Job!")
                                    .font(.body)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(red: -0.024, green: 0.717, blue: 0.003))
                                
                              } else if (answer[char] != " " ){
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

                    if(questionNum < 10 && (stateSystem==nil || stateSystem!.quiz.count > questionNum + 1)) {
                        NavigationLink(destination: ASLLettersQuizQuestion(number: questionNum + 1, score: currentScore, state: stateSystem)) {
                            Text("Next Question →")
                                .foregroundColor(Color(red: 147/255, green: 129/255, blue: 1))
                                .multilineTextAlignment(.trailing)
                        }//end of navigationLink
                    } else {
                      NavigationLink(destination: ASLLettersQuizEndPage(score: currentScore)) {
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
