//
//  CheckinMoodBodyVIew.swift
//  Tucker_App
//
//  Created by Jack Murphy on 7/3/20.
//  Copyright © 2020 Jack Murphy. All rights reserved.
//

import SwiftUI

struct CheckinMoodBodyView: View {
    @Binding var selectedRectangle: Int16
    
    var body: some View {
        HStack {
            // RED BUTTON
            Button(action: {
                self.selectedRectangle = 1
            }) {
                ZStack {
                    Rectangle()
                        .fill(Color.red)
                    if (self.selectedRectangle == 1) {
                        Rectangle()
                            .stroke(lineWidth: self.selectedStrokeWidth)
                            .fill(Color.blue)
                    }
                }
            }
            // LIGHT RED BUTTON
            Button(action: {
                self.selectedRectangle = 2
            }) {
                ZStack {
                    Rectangle()
                        .fill(Color(red: 1, green: 0.7, blue: 0.7))
                    if (self.selectedRectangle == 2) {
                        Rectangle()
                            .stroke(lineWidth: self.selectedStrokeWidth)
                            .fill(Color.blue)
                    }
                }
            }
            // GRAY BUTTON
            Button(action: {
                self.selectedRectangle = 3
            }) {
                ZStack {
                    Rectangle()
                        .fill(Color(red: 0.8, green: 0.8, blue: 0.8))
                    if (self.selectedRectangle == 3) {
                        Rectangle()
                            .stroke(lineWidth: self.selectedStrokeWidth)
                            .fill(Color.blue)
                    }
                }
            }
            // LIGHT GREEN BUTTON
            Button(action: {
                self.selectedRectangle = 4
            }) {
                ZStack {
                    Rectangle()
                        .fill(Color(red: 0.7, green: 1, blue: 0.7))
                    if (self.selectedRectangle == 4) {
                        Rectangle()
                            .stroke(lineWidth: self.selectedStrokeWidth)
                            .fill(Color.blue)
                    }
                }
            }
            // GREEN BUTTON
            Button(action: {
                self.selectedRectangle = 5
            }) {
                ZStack {
                    Rectangle()
                        .fill(Color.green)
                    if (self.selectedRectangle == 5) {
                        Rectangle()
                            .stroke(lineWidth: self.selectedStrokeWidth)
                            .fill(Color.blue)
                    }
                }
            }
        }
        .frame(height: 45)
    }
    
    private let selectedStrokeWidth: CGFloat = 2.0
}

//enum SelectedState { case none, red, lightred, gray, lightgreen, green }
