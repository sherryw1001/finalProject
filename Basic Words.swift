//
//  Basic Words.swift
//  finalPproject
//
//  Created by Divya Bhatia on 7/31/24.
//

import SwiftUI

struct Basic_Words: View {
    @State private var longestStreak = StateManagement.shared.getLongestStreak()
    @State private var currentStreak = StateManagement.shared.getCurrentStreak()
    @State private var diamondCount = StateManagement.shared.getDiamondCount()
    var body: some View {
        NavigationStack {
            ZStack{
                Color(red: 248/255, green: 247/255, blue: 1)
                    .ignoresSafeArea()
                    .toolbar{
                        HStack{
                            HStack{
                                Image("Logo")
                                    .resizable()
                                    .aspectRatio (contentMode:.fit)
                                    .cornerRadius(15)
                                Text("ASL")
                                    .foregroundColor(Color(red: 0, green: 0, blue: 0))
                                
                            }
                            HStack{
                                Image("Streak")
                                    .resizable()
                                    .aspectRatio (contentMode:.fit)
                                    .cornerRadius(15)
                                Text(String(longestStreak)).foregroundColor(Color(red: 0.00, green: 0.00, blue: 0.00))
                                HStack{
                                    Image("Gems")
                                        .resizable()
                                        .aspectRatio (contentMode:.fit)
                                        .cornerRadius(15)
                                    Text(String (diamondCount))
                                        .foregroundColor(Color(red: 0.021, green: 0.673, blue: 0.912))
                                    
                                }
                                HStack{
                                    Image("Fire")
                                        .resizable()
                                        .aspectRatio (contentMode:.fit)
                                        .cornerRadius(15)
                                    Text(String(currentStreak))
                                        .foregroundColor(Color(red: 0.927, green: 0.104, blue: 0.151))
                                    
                                }
                                
                            }
                        }
                    }
                VStack {
                    Text("Here are some basic  \n words in ASL:")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 102/255, green: 103/255, blue: 191/255))
                        .multilineTextAlignment(.center)
                    
                    Image("BasicASLWords")
                        .resizable()
                        .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0))
                        .scaledToFit()
                        .border(Color(red: 0.35, green: 0.163, blue: 0.574), width: 2)
                        .padding()
                    
                    NavigationLink(destination: BasicASLQuizStartPage()) {
                        Text(" Test Your Knowledge     ")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .padding(.all, 6.0)
                            .background(Color(red: 147/255, green: 129/255, blue: 1))
                            .foregroundColor(Color(red: 248/255, green: 247/255, blue: 1))
                            .cornerRadius(10)
                    }
                }//end of VStack
            }//end of ZStack
        }//end of Navigation Stack
    }
}

#Preview {
    Basic_Words()
}
