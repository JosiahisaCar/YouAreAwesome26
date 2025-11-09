//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Josiah Carver on 10/28/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    var body: some View {
        
        VStack {
            Spacer()
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(minWidth: 300, minHeight: 300)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.red)
            Spacer()
            
            Button("Show Message") {
                let messages = ["You're awesome!",
                                "Keep going!",
                                "You're doing great!",
                                "You're amazing!",
                                "You're a legend!"]
                message = messages[messageNumber]
                messageNumber += 1
                if messageNumber == messages.count{
                    messageNumber = 0
                }
                imageName = "Image\(imageNumber)"
                imageNumber += 1
                
                if imageNumber > 9 {
                    imageNumber = 0
                }
                print(imageNumber)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
