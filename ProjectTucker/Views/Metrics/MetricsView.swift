//
//  MetricsView.swift
//  Tucker_App
//
//  Created by Jack Murphy on 6/30/20.
//  Copyright © 2020 Jack Murphy. All rights reserved.
//

import SwiftUI

struct MetricsView: View {
    @ObservedObject var metricsVM: MetricsVM
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 0) {
                HStack {
                    Text("Metrics")
                        .font(.largeTitle)
                        .padding(.horizontal, 25)
                        .padding(.vertical, 15)
                    Spacer()
                }
                Divider()
            }
            VStack(spacing: self.height) {
                ForEach(0..<self.metricsVM.metricItems.count) { index in
                    MetricsItem(label: self.metricsVM.metricItems[index], height: self.height)
                }
                Spacer(minLength: 5.0)
            }
        }
    }
    
    let height: CGFloat = 200.0
}



