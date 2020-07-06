//
//  SettingsButton.swift
//  Tucker_App
//
//  Created by Jack Murphy on 6/30/20.
//  Copyright © 2020 Jack Murphy. All rights reserved.
//

import SwiftUI

struct SettingsButton: View {
    @Binding var showSettings: Bool
    
    // MAIN SCREEN SETTINGS ICON
    var body: some View {
        Button(action: {
            self.showSettings = true
        }) {
            Image(systemName: "gear")
            .foregroundColor(.black)
            .padding(15)
            .font(.largeTitle)
        }
        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
        .clipShape(Circle())
        .padding()
    }
}
