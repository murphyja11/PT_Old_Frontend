//
//  AddButtonView.swift
//  Tucker_App
//
//  Created by Jack Murphy on 7/1/20.
//  Copyright © 2020 Jack Murphy. All rights reserved.
//

import SwiftUI

struct AddButtonView: View {
    @Binding var showAddMenu: Bool
    
    var body: some View {
        // ADD BUTTON
        Button(action: {
            withAnimation {
                self.showAddMenu = true
            }
        }) {
            Image(systemName: "plus")
                .foregroundColor(.white)
                .padding(20)
                .font(.largeTitle)
        }
        .background(Color.red)
        .clipShape(Circle())
        .padding()
    }
}
