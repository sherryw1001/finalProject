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
                VStack{
                    
                    VStack(alignment: .center, spacing: 200){
                                                            Text("Deaf Culture")
                                                    .font(.title)
                                                    .fontWeight(.semibold)
                                                    .foregroundColor(Color(red: 255/255, green:238/255, blue:221/255 ))
                                                                  .multilineTextAlignment(.leading)
                                                            
                                                            
                                                                  .padding(35)
                                                                  .background(Rectangle())
                                                                  .foregroundColor(Color(red: 184/255, green: 184/255, blue: 255/255))
                                                            
                                                                  .cornerRadius(15)
                                                                
                                                                  .padding(10)
                                                                  .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 5)
                }
            }
        }
    }
}

#Preview {
    HomePage()
}
