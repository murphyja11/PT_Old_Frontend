//
//  AddMenuView.swift
//  Tucker_App
//
//  Created by Jack Murphy on 7/1/20.
//  Copyright © 2020 Jack Murphy. All rights reserved.
//

import SwiftUI

struct AddMenuView: View {
    @Binding var showAddMenu: Bool
    @Binding var showCheckin: Bool
    @Binding var showRoll: Bool
    
    var body: some View {
        VStack {
            AddMenuItems(showAddMenu: $showAddMenu, showCheckin: $showCheckin, showRoll: $showRoll)
            
            // CLOSE OUT BUTTON
            Button(action: {
                withAnimation {
                    self.showAddMenu = false
                }
            }) {
                Image(systemName: "xmark")
                    .frame(width: 15, height: 15)
                    .foregroundColor(.black)
                .padding(20)
            }
            .background(Color.white)
            .clipShape(Circle())
            .padding(.top, 25)
        }
    }
}
