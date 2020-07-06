//
//  AddMenuItems.swift
//  Tucker_App
//
//  Created by Jack Murphy on 7/1/20.
//  Copyright © 2020 Jack Murphy. All rights reserved.
//

import SwiftUI

struct AddMenuItems: View {
    @Binding var showAddMenu: Bool
    @Binding var showCheckin: Bool
    @Binding var showRoll: Bool
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                // CHECKIN BUTTON
                Button(action: {
                    self.showAddMenu = false
                    withAnimation {
                        self.showCheckin = true
                    }
                }) {
                    Text("Checkin").menuify(color: Color.blue)
                }
                    //.frame(alignment: .bottom)
                Spacer()
                    .frame(height: 20)
                // ROLL BUTTON
                Button(action: {
                    self.showAddMenu = false
                    withAnimation {
                        self.showRoll = true
                    }
                }) {
                    Text("Roll").menuify(color: Color.orange)
                }
                    //.frame(alignment: .bottom)
                Spacer()
            }
            .padding()
            //.padding(.top, 50)
        }
        //.background(Color.white)
        .frame(width: UIScreen.main.bounds.width * self.menuWidthScale, height: self.menuHeight)
    }
    
    private let menuWidthScale: CGFloat = 0.75
    private let menuHeight: CGFloat = 350.0
}
