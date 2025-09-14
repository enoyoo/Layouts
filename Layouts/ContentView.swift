//
//  ContentView.swift
//  Layouts
//
//  Created by Eno Yoo on 9/14/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = "When the Genius Bar Needs Help, They Call YOU!"
    
    var body: some View {

            VStack {
                Text("You Have Skills!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundStyle(.goldBC)
                    .padding()
                    .background(.maroonBC)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                
                Spacer()
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.maroonBC)
                    .padding()
                    .border(.orange)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                    .border(.orange)
                
                Spacer()
                
                HStack {
                    Button("Awesome") {
                        messageString = "You Are Awesome"
                    }
                    
                    Button("Great") {
                        messageString = "You Are Great"
                    }
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.maroonBC)
                .foregroundStyle(.goldBC)
                
            }
        
            .padding()
            .background(
                LinearGradient(
                    colors: [.goldBC, .maroonBC],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
            )
    }
}

#Preview {
    ContentView()
}
