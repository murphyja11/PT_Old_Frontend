//
//  SettingsView.swift
//  Tucker_App
//
//  Created by Jack Murphy on 7/1/20.
//  Copyright © 2020 Jack Murphy. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @Binding var showSettings: Bool
    @State var notificationsToggle: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Text("Settings").font(.headline).padding()
                HStack {
                    Spacer()
                    Button(action: {self.showSettings = false}) { Text("Done") }.padding()
                }
            }
            Divider()
            Form {
                Section(header: Text("Appearance")) {
                    ColorModeView()
                }
                Section(header: Text("Notifications")) {
                    DoNotDisturbView()
                    Toggle(isOn: self.$notificationsToggle) {
                        Text("Notifications Toggle")
                    }
                }
            }
            .navigationBarTitle(Text("Settings"))
        }
    }
    
    private let xPos: CGFloat = 35.0
    private let menuHeight: CGFloat = 100.0
}

struct SettingsHeader: View {
    @Binding var showSettings: Bool
    
    var body: some View {
        HStack {
            Text("Settings")
            Button(action: {
                withAnimation() {
                    self.showSettings = false
                }
            }) {
                    Image(systemName: "xmark")
                        .frame(width: 15, height: 15)
                        .foregroundColor(.black)
                        .padding(20)
                }
                .background(Color.white)
                .clipShape(Circle())
            .padding(.bottom, 15)
            .padding(.top, 15)
        }
    }
}
