//
//  CheckinMoodView.swift
//  Tucker_App
//
//  Created by Jack Murphy on 7/3/20.
//  Copyright © 2020 Jack Murphy. All rights reserved.
//

import SwiftUI

struct CheckinMoodView: View {
    @Binding var selectedRectangle: Int16
    
    var body: some View {
        VStack(spacing: 5) {
            HStack {
                Text("Mood:")
                    .frame(width: self.moodFrameWidth, alignment: .leading)
                    //.padding(.leading, 15)
                Spacer()
                Button(action: {}) {
                    Image(systemName: "info.circle")
                        .foregroundColor(Color.gray)
                }
            }
            HStack(spacing: 0) {
                CheckinMoodBodyView(selectedRectangle: self.$selectedRectangle)
                Spacer()
            }
        }
        .padding(.horizontal, 10)
    }
    
    private let moodFrameWidth: CGFloat = 60
    
}

/*
struct CheckinMoodView_Previews: PreviewProvider {
    static var previews: some View {
        CheckinMoodView()
    }
}*/



