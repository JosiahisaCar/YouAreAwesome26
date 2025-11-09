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
           
            Text(message)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .frame(height: 130)
                .minimumScaleFactor(0.5)
                .animation(.easeInOut(duration: 0.15), value: message)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(minWidth: 300, minHeight: 300)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            
            Spacer()
            
            Button("Show Message") {
                let messages = ["You're awesome!",
                                "Keep going!",
                                "You're doing great!",
                                "You're amazing!",
                                "You're a legend!",
                "Keep shining! Just like the amazing star that you are!"]
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
