//
//  CircleView.swift
//  TrafficLightSwiftUI
//
//  Created by user on 09.09.2022.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    
    var opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .aspectRatio(contentMode: .fit)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 10)
            .opacity(opacity)
    }
  
    struct CircleView_Previews: PreviewProvider {
        static var previews: some View {
            CircleView(color: .red, opacity: 0.5)
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}
