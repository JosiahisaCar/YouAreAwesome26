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
            
            Button("Press me!") {
                let message1 = "You are Awesome"
                let message2 = "You are Great"
                
                message = ( message == message1 ? message2 : message1 )
                imageName = (imageName == "Image0" ? "Image1" : "Image0")
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
