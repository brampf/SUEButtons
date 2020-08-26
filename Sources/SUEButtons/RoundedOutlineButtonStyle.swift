//
//  RoundedButtonStyle.swift
//  SecondPerspective
//
//  Created by May on 12.01.20.
//  Copyright © 2020 Mayworld. All rights reserved.
//

import SwiftUI

public struct RoundedOutlineButtonStyle: ButtonStyle {

    public init(){
    }
    
    public func makeBody(configuration: RoundedOutlineButtonStyle.Configuration) -> some View {
        
            configuration.label
                .padding(.horizontal, 12)
                .padding(.vertical, 3)
                .foregroundColor(Color.accentColor)
                .background(background)
                .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
                //.hoverEffect(.lift)
    }
    
    var background : some View {
        Capsule(style: .continuous)
            .stroke(Color.accentColor, lineWidth: 2)
            .foregroundColor(Color.clear)
    }
    
}

struct RoundedButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button("Action!"){
            //
        }.buttonStyle(RoundedOutlineButtonStyle())
    }
}
