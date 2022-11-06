//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Olga Yurchuk on 04.11.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonText = "Start"
    @State private var currentLight: Light = .noLight
    
    enum Light {
        case red, yellow, green, noLight
    }
    
    var body: some View {
        ZStack{
            Color(.lightGray)
                .ignoresSafeArea()
            VStack {
                CircleLight(color: .red, opacity: currentLight == .red ? 1: 0.3)
                CircleLight(color: .yellow, opacity: currentLight == .yellow ? 1: 0.3)
                CircleLight(color: .green, opacity: currentLight == .green ? 1: 0.3)
                
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
        switch currentLight {
        case .noLight: currentLight = .red
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
