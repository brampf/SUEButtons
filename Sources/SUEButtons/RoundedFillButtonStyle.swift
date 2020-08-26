//
//  SwiftUIView.swift
//  
//
//  Created by May on 05.07.20.
//

import SwiftUI

public struct RoundedFillButtonStyle: ButtonStyle {

    public init(){
    }
    
    public func makeBody(configuration: Self.Configuration) -> some View {
        
        configuration.label
            .padding(.horizontal, 12)
            .padding(.vertical, 3)
            .foregroundColor(Color.white)
            .background(background)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
            //.hoverEffect(.lift)
    }
    
    var background : some View {
        
       Capsule().fill(Color.accentColor)
        
    }
}

struct RoundedFillButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Button("Action!"){
                //
            }.buttonStyle(RoundedFillButtonStyle())
            Button("RoundedFillButtonStyle"){
                //
            }.preferredColorScheme(.dark).buttonStyle(RoundedFillButtonStyle())
        }
    }
}
