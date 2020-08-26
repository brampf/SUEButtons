//
//  ButtonStyles.swift
//  VisualMemories
//
//  Created by May on 28.12.19.
//  Copyright © 2019 Mayworld. All rights reserved.
//

import Foundation
import SwiftUI


public struct CapsuleButtonStyle: ButtonStyle {
    
    public init(){
        
    }
    
    public func makeBody(configuration: Self.Configuration) -> some View {
        
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(6)
            .foregroundColor(.accentColor)
            .background(background)
            .padding(.horizontal, 20)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
            //.hoverEffect(.lift)
    }
    
    var background : some View {
        Capsule(style: .continuous).stroke(Color.accentColor, lineWidth: 1)
    }
}

struct CapsuleButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Button("Action!"){
                //
            }.buttonStyle(CapsuleButtonStyle())
        }
    }
}
