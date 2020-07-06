//
//  ContentView.swift
//  Tucker_App
//
//  Created by Jack Murphy on 6/25/20.
//  Copyright © 2020 Jack Murphy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    
    /*request.predicate = NSPredicate(value: true)
    request.sortDescriptors = [NSSortDecriptor(key: "date", ascending: true)]
    let data = try? managedObjectContext.fetch(request)
    */
    //@FetchRequest(entity: SubmissionCheckin.entity(), sortDescriptors = [], predicate = NSPredicate(value: true))
    
    //MARK: -STATES
    @State private var selection = 0
    @State var showSettings: Bool = false
    @State var showAddMenu: Bool = false
    @State var showCheckin: Bool = false
    @State var showRoll: Bool = false
    
 
    var body: some View {
        GeometryReader { geometry in
            // main view: tab and page
            TabView(selection: self.$selection){
                DashboardView().environment(\.managedObjectContext, self.managedObjectContext)
                    .tabItem {
                        VStack {
                            Image(systemName: "gauge")
                            Text("Dashboard")
                                
                        }
                    } .tag(0)
                MetricsView(metricsVM: MetricsVM())
                    .tabItem {
                        VStack {
                            Image (systemName: "bolt")
                            Text("Metrics")
                        }
                    } .tag(1)
            }
            
            //MARK: -IF STATEMENTS CONTROLLING WHICH VIEWS APPEAR ON SCREEN
            //Might be buggy, especially as I scale
            
            // SETTINGS MENU
            SettingsButton(showSettings: self.$showSettings)
                .position(x: geometry.size.width - self.settingsButtonXPos, y: self.settingsButtonYPos)
                .sheet(isPresented: self.$showSettings) {
                    GeometryReader { _ in
                        SettingsView(showSettings: self.$showSettings)
                    }
            }
            
            // ADD MENU
            if self.showAddMenu {
                GeometryReader { _ in
                    AddMenuView(showAddMenu: self.$showAddMenu, showCheckin: self.$showCheckin, showRoll: self.$showRoll)
                }
                .background(Color.black.opacity(0.5).edgesIgnoringSafeArea(.all))
            } else { // ADD BUTTON
                AddButtonView(showAddMenu: self.$showAddMenu)
                    .position(x: geometry.size.width - self.addButtonXPos, y: geometry.size.height - self.addButtonYPos)
            }
            
            // CHECKIN OR ROLL SCREENS
            if self.showCheckin { // CHECKIN SCREEN
                CheckinView(showCheckin: self.$showCheckin).environment(\.managedObjectContext, self.managedObjectContext)
                //.zIndex(1)
            } else if self.showRoll { // ROLL SCREEN
                RollView(showRoll: self.$showRoll)
            }
        }
    }
    
    // MARK: -Drawing Constants
    private let settingsButtonXPos: CGFloat = 47.0
    private let settingsButtonYPos: CGFloat = 30.0
    private let addButtonXPos: CGFloat = 55.0
    private let addButtonYPos: CGFloat = 105.0


    
    
}

// Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
