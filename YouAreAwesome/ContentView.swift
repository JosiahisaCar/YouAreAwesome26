//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Josiah Carver on 10/28/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageString = ""
    var body: some View {
        
        VStack {
            Spacer()
            Image(systemName: imageString)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            Button("Press me!") {
                let message1 = "You are Awesome"
                let message2 = "You are Great"
                let image1 = "sun.max.fill"
                let image2 = "hand.thumbsup"
//                if message == message1{
//                    message = message2
//                    imageString = image2
//                } else {
//                    message = message1
//                    imageString = image1
//                }
                message = ( message == message1 ? message2 : message1 )
                imageString = (imageString == image1 ? image2 : image1)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
