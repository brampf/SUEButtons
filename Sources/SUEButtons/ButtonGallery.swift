/*
 
 Copyright (c) <2020>
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 
 */

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
