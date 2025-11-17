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
    @State private var lastMessageNumber = -1 // last message number will never = -1
    @State private var lastImageNumber = -1
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
                
                var messageNumber: Int
                repeat{
                    messageNumber = Int.random(in: 0..<messages.count)
                } while messageNumber == lastMessageNumber
                message = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                var imageNumber: Int
                repeat{
                    imageNumber = Int.random(in: 0...9)
                }while imageNumber == lastImageNumber
                imageName = "Image\(imageNumber)"
                lastImageNumber = imageNumber
                
               
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
