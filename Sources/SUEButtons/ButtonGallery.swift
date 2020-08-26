//
//  SwiftUIView.swift
//  
//
//  Created by May on 05.07.20.
//

import SwiftUI

struct ButtonPreview<Style: ButtonStyle> : View {
    
    var styles: [String: Style]
    
    init(_ styles : [String: Style]){
        self.styles = styles
    }
    
    var body: some View {
        VStack(spacing: 0){
            HStack{
                Text(String(describing: Style.self)).font(.caption).bold().lineLimit(1)
                Spacer()
            }.padding(3).background(Color.secondary.opacity(0.1))
            
            ForEach(styles.keys.sorted(), id: \.self){ key in
                HStack{
                    Button(key){
                        //
                    }.buttonStyle(styles[key]!).padding()
                }
            }

        }.border(Color.secondary, width: 1)
    }
}

struct ButtonGallery_Previews: PreviewProvider {
    
    static let gradient = LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    static var previews: some View {
        
        HStack{
            ForEach(ColorScheme.allCases, id: \.self){ scheme in
                Group{
                    VStack{
                        
                        ButtonPreview(["Button": RectangleButtonStyle()])
                        
                        ButtonPreview(["Button": GradientButtonStyle(gradient)])
                        
                        ButtonPreview(["Button": CapsuleButtonStyle()])
                        
                        ButtonPreview(["Button": RoundedOutlineButtonStyle()])
                        
                        ButtonPreview(["Button": RoundedFillButtonStyle()])
                         
                        Spacer()
                    }
                }.colorScheme(scheme).background(scheme == .dark ? Color.black : Color.white)
                .font(.caption)
            }
        }
        .previewLayout(.fixed(width: 600, height: 800))
    }
}
