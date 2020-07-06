//
//  CheckinView.swift
//  Tucker_App
//
//  Created by Jack Murphy on 7/2/20.
//  Copyright © 2020 Jack Murphy. All rights reserved.
//

import SwiftUI
import CoreData

struct CheckinView: View {

    var body: some View {
        VStack {
            // CHECKIN SCREEN BODY
            VStack(spacing: 5) {
                Text("Check In")
                    .font(.largeTitle)
                Divider()
            }
            ScrollView {
                //VStack {
                    //MIND SECTION
                    HStack {
                        Text("Mind")
                            .foregroundColor(Color.gray)
                            .font(.callout)
                        Spacer()
                    }
                    .padding(.horizontal, self.headerPadding)
                    
                    // Mental Clarity
                    SliderView(title: "Mental Clarity", sliderValue: self.$mentalClarityValue, infoShow: self.$infoMentalClarity)
                    // Motivation
                    SliderView(title: "Motivation", sliderValue: self.$motivationValue, infoShow: self.$infoMotivation)
                    // Mood
                    CheckinMoodView(selectedRectangle: self.$moodValue)
                    Divider()
                        .padding(.bottom, self.dividerPadding)
                    
                    //BODY SECTION
                    HStack {
                        Text("Body")
                            .foregroundColor(Color.gray)
                            .font(.callout)
                        Spacer()
                    }
                    .padding(.horizontal, self.headerPadding)
                    //Sleep
                    SliderView(title: "Sleep", sliderValue: self.$sleepValue, infoShow: self.$infoEnergy)
                    //Energy
                    SliderView(title: "Energy", sliderValue: self.$energyValue, infoShow: self.$infoEnergy)
                    //Soreness
                    SliderView(title: "Soreness", sliderValue: self.$sorenessValue, infoShow: self.$infoSoreness)
                    Divider()
                        .padding(.bottom, self.dividerPadding)
                //}
            }
            // SUBMIT AND CANCEL BUTTONS
            HStack {
                // SUBMIT BUTTON
                Button(action: {
                    withAnimation {
                        self.saveCheckin()
                        self.showCheckin = false
                    }
                }) {
                    Text("Submit")
                        .buttonify(color: Color.blue, textColor: Color.white, height: self.buttonHeight, cornerRadius: self.cornerRadius)
                        .frame(width: UIScreen.main.bounds.width * self.submitRatio)
                }
                //CANCEL BUTTONS
                Button(action: {
                    withAnimation {
                        self.showCheckin = false
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
    
    //MARK: -Drawing constants
    private let submitRatio: CGFloat = 0.6
    private let buttonHeight: CGFloat = 70.0
    private let cornerRadius: CGFloat = 20.0
    private let headerPadding: CGFloat = 30
    private let dividerPadding: CGFloat = 10
    
    
    //MARK: -INITIALIZATIONS
    @Environment(\.managedObjectContext) var managedObjectContext
    
    @Binding var showCheckin: Bool
    
    // Survey Values
    @State var sleepValue: Float = 0
    @State var energyValue: Float = 0
    @State var mentalClarityValue: Float = 0
    @State var motivationValue: Float = 0
    @State var sorenessValue: Float = 0
    @State var moodValue: Int16 = 0
    
    // INFO Bools --> NOT UP TO DATE
    @State var infoEnergy: Bool = false
    @State var infoMentalClarity: Bool = false
    @State var infoMotivation: Bool = false
    @State var infoSoreness: Bool = false
    
    // method that saves a completed Checkin to Core Data
    func saveCheckin () {
        let newSubmission = SubmissionCheckin(context: self.managedObjectContext)
        newSubmission.mentalClarity = self.mentalClarityValue
        newSubmission.motivation = self.motivationValue
        newSubmission.mood = self.moodValue
        newSubmission.sleep = self.sleepValue
        newSubmission.energy = self.energyValue
        newSubmission.soreness = self.sorenessValue
        newSubmission.date = Date()
        
        do {
            try self.managedObjectContext.save()
            print("Submission saved")
        } catch {
            print(error.localizedDescription)
        }
    }
}
