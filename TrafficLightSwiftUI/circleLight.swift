//
//  circleLight.swift
//  TrafficLightSwiftUI
//
//  Created by Olga Yurchuk on 04.11.2022.
//

import SwiftUI

struct CircleLight: View {
    let color:  Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
            .opacity(opacity)
    }
}

struct circleLight_Previews: PreviewProvider {
    static var previews: some View {
        CircleLight(color: .red, opacity: 1.0)
    }
}
