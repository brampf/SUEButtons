//
//  SwiftUIView.swift
//  
//
//  Created by May on 05.07.20.
//

import SwiftUI

public struct GradientButtonStyle: ButtonStyle {
    
    //@Environment(\.foregroundColor) var foregroundColor
    
    var gradient : LinearGradient
    
    public init(_ gradient: LinearGradient){
        self.gradient = gradient
    }
    
    public func makeBody(configuration: GradientButtonStyle.Configuration) -> some View {
    
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(6)
            .background(gradient)
            .cornerRadius(40)
            .padding(.horizontal, 20)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}

struct GradientButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Button("Action!"){
                //
            }.buttonStyle(GradientButtonStyle(LinearGradient(gradient: Gradient(colors: [.red, .orange]), startPoint: .topLeading, endPoint: .bottomTrailing))).foregroundColor(.white)
        }
    }
}
