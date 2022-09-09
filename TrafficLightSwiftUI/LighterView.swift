//
//  LighterView.swift
//  TrafficLightSwiftUI
//
//  Created by user on 09.09.2022.
//

import SwiftUI

struct LighterView: View {
    
    @State var redLight = CircleView(color: .red, opacity: 0.3)
    @State var yellowLight = CircleView(color: .yellow, opacity: 0.3)
    @State var greenLight = CircleView(color: .green, opacity: 0.3)
    
    let isOn = 1.0
    let isOff = 0.3
    
    var changeColorButton : some View {
        Text(" Change Color!  ")
            .font(.title)
            .foregroundColor(.white)
            .background(.indigo)
            .cornerRadius(10)
            .padding()
    }
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                redLight
                yellowLight
                greenLight
                
                Spacer()
                
                Button(action: { changeColorButtonTapped() }) {
                    changeColorButton
                }
            }
        }
    }
    
    func changeColorButtonTapped() {
        if redLight.opacity == isOff &&
            yellowLight.opacity == isOff &&
            greenLight.opacity == isOff {
            redLight.opacity = isOn
        } else if redLight.opacity == isOn {
            redLight.opacity = isOff
            yellowLight.opacity = isOn
        } else if yellowLight.opacity == isOn {
            yellowLight.opacity = isOff
            greenLight.opacity = isOn
        } else if greenLight.opacity == isOn {
            greenLight.opacity = isOff
            redLight.opacity = isOn
        }
    }
    
    
    struct LighterView_Previews: PreviewProvider {
        static var previews: some View {
            LighterView()
        }
    }
}
