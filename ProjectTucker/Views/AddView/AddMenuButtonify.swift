//
//  AddMenuButtonify.swift
//  Tucker_App
//
//  Created by Jack Murphy on 7/2/20.
//  Copyright © 2020 Jack Murphy. All rights reserved.
//

import SwiftUI

struct AddMenuButtonify: ViewModifier {
    var color: Color
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.white)
            .font(.largeTitle)
            .buttonify(color: self.color, textColor: Color.white, height: self.buttonHeight, cornerRadius: self.cornerRadius)
            .foregroundColor(self.color)
    }
    
    private let buttonHeight: CGFloat = 150.0
    private let cornerRadius: CGFloat = 35.0
}

extension View {
    func menuify(color: Color) -> some View {
        self.modifier(AddMenuButtonify(color: color))
    }
}
