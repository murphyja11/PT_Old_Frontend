//
//  MetricsItem.swift
//  Tucker_App
//
//  Created by Jack Murphy on 7/1/20.
//  Copyright © 2020 Jack Murphy. All rights reserved.
//

import SwiftUI

struct MetricsItem: View {
    var label: String
    var height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: self.cornerRadius)
                    .size(width: geometry.size.width, height: self.height)
                    .fill(self.itemColor).opacity(self.shade)
                Text(self.label)
                    .font(Font.system(size: min(geometry.size.height, geometry.size.width) * self.textScalingFactor))
            }
        }
    }
    
    private let cornerRadius: CGFloat = 25.0
    private let itemColor: Color = Color.blue
    private let shade: Double = 0.25
    private let scalingFactor: CGFloat = 30.0
    private let textScalingFactor: CGFloat = 2.0
}
