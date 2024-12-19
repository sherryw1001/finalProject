//
//  CulturalBehaviors.swift
//  finalPproject
//
//  Created by Summer on 7/31/24.
//

import SwiftUI

struct CulturalBehaviors: View {
    
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
                                Text(String(longestStreak))
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
                    
                    Text("Cultural Behaviors")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 147/255, green: 129/255, blue: 255/255))
                        .multilineTextAlignment(.center)
                        .padding(10)
                    
                    Image("CulturalPicture")
                        .resizable()
                        .aspectRatio (contentMode:.fit)
                        .cornerRadius(15)
                        .padding(10)
                    
                    
                    Text("Deaf culture brings people together in a close-knit community where they celebrate their identities. Visual communication is key, with eye contact, facial expressions, and body language playing crucial roles. Common ways to get someone's attention include tapping them on the shoulder or waving in their peripheral vision. \n")
                        .font(.headline)
                        .foregroundColor(Color(red: 147/255, green: 129/255, blue: 255/255))
                        .multilineTextAlignment(.center)
                        .padding(10)
                    
                    
                    Link(destination: URL (string: "https://vawnet.org/sc/etiquette")!) {
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
    CulturalBehaviors()
}
