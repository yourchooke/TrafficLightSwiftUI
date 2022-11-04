//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Olga Yurchuk on 04.11.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonText = "Start"
    @State private var redOpacity = 0.5
    @State private var yellowOpacity = 0.5
    @State private var greenOpacity = 0.5
    
    var body: some View {
        ZStack{
            Color(.lightGray)
                .ignoresSafeArea()
            VStack {
                circleLight(color: .red)
                    .opacity(redOpacity)
                circleLight(color: .yellow)
                    .opacity(yellowOpacity)
                circleLight(color: .green)
                    .opacity(greenOpacity)
                
                Spacer()
                
                Button(action: {
                    buttonText = "Next"
                    changeLight()
                }) {
                    Text(buttonText)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                }
                    .buttonStyle(.borderedProminent)
                .padding()
            }
        }
    }
    
    private func changeLight() {
        if redOpacity == 0.5 && yellowOpacity == 0.5 && greenOpacity == 0.5 {
            redOpacity = 1.0
        } else if redOpacity == 1.0 {
            redOpacity = 0.5
            yellowOpacity = 1.0
            greenOpacity = 0.5
        } else if yellowOpacity == 1.0 {
            yellowOpacity = 0.5
            greenOpacity = 1.0
        } else if greenOpacity == 1.0 {
            greenOpacity = 0.5
            redOpacity = 1.0
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
