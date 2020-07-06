//
//  InfoMotivationView.swift
//  Tucker_App
//
//  Created by Jack Murphy on 7/3/20.
//  Copyright © 2020 Jack Murphy. All rights reserved.
//

import SwiftUI

struct InfoMotivationView: View {
    @Binding var info: Bool
    
    var body: some View {
        VStack(spacing: 10) {
            ZStack {
                Text("About Motivation").padding()
                HStack {
                    Spacer()
                    Button(action: {self.info = false}) { Text("Done") }.padding()
                }
            }
            Divider()
            Text("This is the body where the feature is described")
        }
    }
}
