//
//  ContentView.swift
//  finalPproject
//
//  Created by Sherry Wang on 7/26/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 102/255, green: 103/255, blue: 191/255)
                    .ignoresSafeArea()
                VStack {
                    Text("Ready to begin your American Sign Language learning journey?")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 248/255, green: 247/255, blue: 1))
                        .multilineTextAlignment(.center)
                NavigationLink(destination: HomePage()) {
                        Text("Let's go!")
                        .padding(20)
                        .foregroundColor(Color(red: 184/255, green: 184/255, blue: 255/255))
                    
                    }
                }
                .padding()
                
            }
        }.tint(Color(red: 147/255, green: 129/255, blue: 1))
    }
}

#Preview {
    ContentView()
}
