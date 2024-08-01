//
//  HistoryAndValues.swift
//  finalPproject
//
//  Created by Summer on 7/31/24.
//

import SwiftUI

struct HistoryAndValues: View {
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
                                    .foregroundColor(Color(red: 0.349, green: 0.163, blue: 0.574))
                                
                            }
                            HStack{
                                Image("Streak")
                                    .resizable()
                                    .aspectRatio (contentMode:.fit)
                                    .cornerRadius(15)
                                Text("84")
                                HStack{
                                    Image("Gems")
                                        .resizable()
                                        .aspectRatio (contentMode:.fit)
                                        .cornerRadius(15)
                                    Text("250")
                                        .foregroundColor(Color(hue: 0.551, saturation: 0.941, brightness: 0.59))
                                    
                                }
                                HStack{
                                    Image("Heart")
                                        .resizable()
                                        .aspectRatio (contentMode:.fit)
                                        .cornerRadius(15)
                                    Text("5")
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
                    Text("Deaf people have faced a lot of challenges over the years, but they've also fought hard for their rights. Important values in Deaf culture are keeping sign language alive, communicating openly, and being proud of their heritage and achievements. \n")
                        .font(.headline)
                        .foregroundColor(Color(red: 147/255, green: 129/255, blue: 255/255))
                        .multilineTextAlignment(.center)
                        .padding(15)
                    
                    
                    Link(destination: URL (string: "https://www.handtalk.me/en/blog/deaf-culture/")!) {
                        Text("Click me to learn more!")
                    }
                    
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.all, 12.0)
                    .background(Color(red: 147/255, green: 129/255, blue: 1))
                    .foregroundColor(Color(red: 248/255, green: 247/255, blue: 1))
                    .cornerRadius(10)
                    
                }
            }
        }
    }
    
}
#Preview {
    HistoryAndValues()
}
