//
//  RollView.swift
//  Tucker_App
//
//  Created by Jack Murphy on 7/2/20.
//  Copyright © 2020 Jack Murphy. All rights reserved.
//

import SwiftUI

struct RollView: View {
    @Binding var showRoll: Bool
    
    var body: some View {
        VStack {
            
            // ROLLINBG SCREEN BODY
            ScrollView {
                VStack {
                   Text("Rolling")
                       .font(.largeTitle)
                    //TODO: Implement animated ..., ..., ... after rolling to show you are in progress
                   Divider()
               }
            }
            
            // DONE AND CANCEL BUTTONS
            HStack {
                    Button(action: {
                        withAnimation {
                            self.showRoll = false
                        }
                    }) {
                        Text("Done")
                            .buttonify(color: Color.blue, textColor: Color.white, height: self.buttonHeight, cornerRadius: self.cornerRadius)
                            .frame(width: UIScreen.main.bounds.width * self.doneRatio)
                    }
                    Button(action: {
                        withAnimation {
                            self.showRoll = false
                        }
                    }) {
                        Text("Cancel")
                            .buttonify(color: Color(red: 0.85, green: 0.85, blue: 0.85), textColor: Color.black, height: self.buttonHeight, cornerRadius: self.cornerRadius)
                    }
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 10)
            }
        .background(Color(UIColor.systemBackground))
        }

    //MARK: -Drawing Constants
    private let doneRatio: CGFloat = 0.6
    private let buttonHeight: CGFloat = 70.0
    private let cornerRadius: CGFloat = 20.0
}

/*
struct RollView_Previews: PreviewProvider {
    static var previews: some View {
        RollView()
    }
}*/
