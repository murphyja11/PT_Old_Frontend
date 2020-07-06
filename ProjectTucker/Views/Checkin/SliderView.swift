//
//  SliderView.swift
//  Tucker_App
//
//  Created by Jack Murphy on 7/4/20.
//  Copyright © 2020 Jack Murphy. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    var title: String
    @Binding var sliderValue: Float
    @Binding var infoShow: Bool
    
    
    var body: some View {
        HStack(spacing: 0) {
            Text(self.title)
                .frame(width: self.textFrameWidth, alignment: .leading)
            Text("\(self.sliderValue, specifier: "%.1f")")
                .frame(width: 30, alignment: .leading)
            Slider(value: self.$sliderValue, in: 0...5, minimumValueLabel: Text(""), maximumValueLabel: Text("5"), label: { Text("") })
            Button(action: {
                //self.infoShow = true
            }) {
                Image(systemName: "info.circle")
                    .foregroundColor(Color.gray)
            }
            .padding(.leading, 5)
            /*.popover(isPresented: self.infoShow) {
                GeometryReader { _ in
                    InfoMentalClarityView(info: self.infoShow)
                }
            }*/
        }
        .padding(.horizontal, 10)
    }
    
    private let textFrameWidth: CGFloat = 100
}

