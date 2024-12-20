//
//  HistoryAndValues.swift
//  finalPproject
//
//  Created by Summer on 7/31/24.
//

import SwiftUI

struct HistoryAndValues: View {
    
    @State private var longestStreak = StateManagement.shared.getLongestStreak()
    @State private var currentStreak = StateManagement.shared.getCurrentStreak()
    @State private var diamondCount = StateManagement.shared.getDiamondCount()
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 255/255, green: 238/255, blue: 221/255)
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
                VStack{
                    
                    Text("History & Values")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 147/255, green: 129/255, blue: 255/255))
                        .multilineTextAlignment(.center)
                    
                    Image("HistoryPicture")
                        .resizable()
                        .aspectRatio (contentMode:.fit)
                        .cornerRadius(15)
                        .padding(15)
                    
                    
                    Text("Deaf people have faced a lot of challenges over the years, but they've also fought hard for their rights. Important values in Deaf culture are keeping sign language alive, communicating openly, and being proud of their heritage and achievements. \n")
                        .font(.headline)
                        .foregroundColor(Color(red: 147/255, green: 129/255, blue: 255/255))
                        .multilineTextAlignment(.center)
                        .padding(15)
                    
                    
                    Link(destination: URL (string: "https://www.handtalk.me/en/blog/deaf-culture/")!) {
                        Text("Click to learn more")
                    }
                    
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.all, 12.0)
                    .background(Color(red: 147/255, green: 129/255, blue: 1))
                    .foregroundColor(Color(red: 248/255, green: 247/255, blue: 1))
                    .cornerRadius(10)
                    
                }
                .padding(15)
            }
        }
    }
    
}
#Preview {
    HistoryAndValues()
}
