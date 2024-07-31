//
//  HomePage.swift
//  finalPproject
//
//  Created by Divya Bhatia on 7/30/24.
//

import SwiftUI

struct HomePage: View {
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
                    NavigationLink(destination: Letters()) {
                        HStack{
                            Text("Letters")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 255/255, green:238/255, blue:221/255 ))
                                .multilineTextAlignment(.leading)
                            
                            
                                .padding(35)
                                .background(Rectangle())
                                .foregroundColor(Color(red: 184/255, green: 184/255, blue: 255/255))
                            
                                .cornerRadius(15)
                            
                                .padding(30)
                            //                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 5)
                        }
                    }
                    NavigationLink(destination: Basic_Words()) {
                        HStack{
                            Text("Basic Words")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 255/255, green:238/255, blue:221/255 ))
                                .multilineTextAlignment(.leading)
                            
                            
                                .padding(35)
                                .background(Rectangle())
                                .foregroundColor(Color(red: 184/255, green: 184/255, blue: 255/255))
                            
                                .cornerRadius(15)
                            
                                .padding(30)
                            //                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 5)
                            
                        }
                    }
                    
                    NavigationLink(destination:Deaf_Culture()) {
                        HStack{
                            Text("Deaf Culture")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 255/255, green:238/255, blue:221/255 ))
                                .multilineTextAlignment(.leading)
                            
                            
                                .padding(35)
                                .background(Rectangle())
                                .foregroundColor(Color(red: 184/255, green: 184/255, blue: 255/255))
                            
                                .cornerRadius(15)
                            
                                .padding(30)
                            //                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 5)
                            
                        }
                    }
                    
                }
            }
        }

    }
}



#Preview {
    HomePage()
}
