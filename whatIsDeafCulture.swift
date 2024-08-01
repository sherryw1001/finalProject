//
//  whatIsDeafCulture.swift
//  finalPproject
//
//  Created by Summer on 7/31/24.
//

import SwiftUI

struct whatIsDeafCulture: View {
    var body: some View {
        NavigationStack{
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
                                    .foregroundColor(Color(red: 0.35, green: 0.163, blue: 0.574))
                                
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
                                        .foregroundColor(Color(red: 0.021, green: 0.673, blue: 0.912))
                                    
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
                    
                    Text("What is deaf culture?")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 102/255, green: 103/255, blue: 191/255))
                        .multilineTextAlignment(.center)
                    Text("Deaf culture is all about the community of people who are Deaf and use sign language to communicate. It’s a unique way of life that focuses on visual communication and sees being Deaf as a difference, not a disability. \n                                                                                      LINK: https://www.handsandvoices.org/comcon/articles/deafculture.htm")
                        .font(.headline)
                        .foregroundColor(Color(red: 102/255, green: 103/255, blue: 191/255))
                        .multilineTextAlignment(.center)
                        .padding(15)
                    
                    Button("Find out more") {
                        UIApplication.shared.openURL(URL(string: "http://google.com")!)
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
    whatIsDeafCulture()
}
