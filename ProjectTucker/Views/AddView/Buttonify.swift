//
//  SubmitCancelButton.swift
//  Tucker_App
//
//  Created by Jack Murphy on 7/2/20.
//  Copyright © 2020 Jack Murphy. All rights reserved.
//

import SwiftUI

struct Buttonify: ViewModifier {
    var color: Color
    var textColor: Color
    var height: CGFloat
    var cornerRadius: CGFloat
    
    func body(content: Content) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: self.cornerRadius)
                .frame(height: self.height)
                .foregroundColor(self.color)
            content
                .foregroundColor(textColor)
                .font(.headline)
        }
    }
}

extension View {
    func buttonify(color: Color, textColor: Color, height: CGFloat, cornerRadius: CGFloat) -> some View {
        self.modifier(Buttonify(color: color, textColor: textColor, height: height, cornerRadius: cornerRadius))
    }
}
