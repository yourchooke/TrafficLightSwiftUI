//
//  circleLight.swift
//  TrafficLightSwiftUI
//
//  Created by Olga Yurchuk on 04.11.2022.
//

import SwiftUI

struct circleLight: View {
    let color:  Color
    
    var body: some View {
        Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
    }
}

struct circleLight_Previews: PreviewProvider {
    static var previews: some View {
        circleLight(color: .red)
    }
}
