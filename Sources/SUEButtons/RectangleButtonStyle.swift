//
//  File.swift
//  
//
//  Created by May on 24.03.20.
//

import SwiftUI

public struct RectangleButtonStyle: ButtonStyle {
    
    @Environment(\.colorScheme) var colorScheme : ColorScheme
    
    var corderRadius : CGFloat = 5
    
    public init(){
        //
    }
    
    public func makeBody(configuration: RectangleButtonStyle.Configuration) -> some View {
        
        configuration.label
            .padding(.horizontal, 6)
            .padding(.vertical, 3)
            .foregroundColor(Color.white)
            .background(RoundedRectangle(cornerRadius: corderRadius)
                .foregroundColor(Color.accentColor))
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
            //.hoverEffect(.lift)
    }
    
    var background : some View {
        RoundedRectangle(cornerRadius: corderRadius).foregroundColor(Color.accentColor)
    }
}

struct RectangleButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Button("Action!"){
                //
            }.buttonStyle(RectangleButtonStyle())
        }
    }
}
