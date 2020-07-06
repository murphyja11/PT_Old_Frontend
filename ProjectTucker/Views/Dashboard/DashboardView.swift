//
//  DashboardView.swift
//  Tucker_App
//
//  Created by Jack Murphy on 6/30/20.
//  Copyright © 2020 Jack Murphy. All rights reserved.
//

import SwiftUI
import CoreData


// View for the Dashboard/Home page.
struct DashboardView: View {
    //@ObservedObject var dashboardVM: DashboardVM

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                HStack {
                    Text("Dashboard")
                        .font(.largeTitle)
                        .padding(.horizontal, 25)
                        .padding(.vertical, 15)
                    Spacer()
                }
                Divider()
                
                // Performance Score
                ZStack {
                    VStack {
                        HStack {
                            Text("Performance Score:")
                                .font(.title)
                            Spacer()
                            Text("\(self.calcPerformanceScore(checkin: checkinData.first!), specifier: "%.1f")")
                                //.font(.title)
                                .font(.system(size: 28, weight: .heavy))
                                //.foregroundColor(self.performanceColor)
                        }
                        .padding(.horizontal)
                        ZStack(alignment: .leading) {
                            Rectangle()
                                .foregroundColor(Color(red: 0.7, green: 0.7, blue: 0.7))
                                .frame(height: 15)
                            GeometryReader { geometry in
                                RoundedRectangle(cornerRadius: 5)
                                    .foregroundColor(self.performanceColor)
                                    .frame(width: (CGFloat(self.calcPerformanceScore() / self.maxPerformanceScore) * geometry.size.width))
                            }
                            .frame(height: 22)
                        }
                        .frame(height: 40)
                    }
                    .padding(15)
                }
                .padding(.top, 15)
                .frame(height: 130)
                Divider()
                
                HStack {
                    Text("Energy")
                    Spacer()
                    ForEach(checkinData, id: \.date) { entry in
                        //print("\(entry.energy)")
                        Text("\(entry.energy, specifier: "%.1f")")
                    }
                    
                }
                .padding()
                Divider()
            }
        }
    }
    
    // Variables
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest var checkinData: FetchedResults<SubmissionCheckin>
    
    init() {
        let predicate = NSPredicate(value: true)
        let request = SubmissionCheckin.getFetchRequest(predicate)
        _checkinData = FetchRequest(fetchRequest: request)
    }
    
    private let maxPerformanceScore: Float = 10.0
    private var performanceColor: Color {
        let perfScore = self.calcPerformanceScore(checkin: checkinData.first)
        if perfScore > 6.6 {
            return Color.green
        } else if perfScore > 3.9 {
            return Color.yellow
        } else {
            return Color.red
        }
    }
    
    // equation is really made up
    func calcPerformanceScore (checkin: FetchedResults<SubmissionCheckin>.Element) -> Float {
        guard let current = checkin else { return -1.0 }
        let numerator1 = Float(current.mentalClarity + current.motivation + Float(current.mood) - 1.0)
        let numerator2 = Float(current.sleep + 2.0 * current.energy - current.soreness)
        let score = (numerator1 + numerator2) / 2.9
        return score
    }
    
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
