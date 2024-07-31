//
//  Letters.swift
//  finalPproject
//
//  Created by Divya Bhatia on 7/31/24.
//

import SwiftUI

struct Letters: View {
    var body: some View {
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
        }
    }
}

#Preview {
    Letters()
}
