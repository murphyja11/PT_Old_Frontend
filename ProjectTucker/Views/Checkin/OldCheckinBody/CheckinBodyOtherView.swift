//
//  CheckinBodyOtherView.swift
//  Tucker_App
//
//  Created by Jack Murphy on 7/3/20.
//  Copyright © 2020 Jack Murphy. All rights reserved.
//

import SwiftUI
/*
struct CheckinBodyOtherView: View {
    @State var energyValue: Double = 0
    @State var mentalClarityValue: Double = 0
    @State var motivationValue: Double = 0
    
    
    @State var infoEnergy: Bool = false
    @State var infoMentalClarity: Bool = false
    @State var infoMotivation: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Mind")
                    .foregroundColor(Color.gray)
                    .font(.callout)
                Spacer()
            }
            .padding(.horizontal, 30)
            // MENTAL CLARITY
            HStack(spacing: 0) {
                Text("Mental Clarity:")
                    .frame(width: self.textFrameWidth, alignment: .leading)
                Text("\(self.mentalClarityValue, specifier: "%.1f")")
                    .frame(width: 30, alignment: .leading)
                Slider(value: self.$mentalClarityValue, in: 0...5, minimumValueLabel: Text(""), maximumValueLabel: Text("5"), label: { Text("") })
                Button(action: {
                        self.infoMentalClarity = true
                    }) {
                        Image(systemName: "info.circle")
                            .foregroundColor(Color.gray)
                    }
                    .padding(.leading, 5)
                    .popover(isPresented: self.$infoMentalClarity) {
                        GeometryReader { _ in
                            InfoMentalClarityView(info: self.$infoMentalClarity)
                        }
                    }
                }
                .padding(.horizontal, 10)
            // MOTIVATION
            HStack(spacing: 0) {
                Text("Motivation:")
                    .frame(width: self.textFrameWidth, alignment: .leading)
                Text("\(self.motivationValue, specifier: "%.1f")")
                    .frame(width: 30, alignment: .leading)
                Slider(value: self.$motivationValue, in: 0...5, minimumValueLabel: Text(""), maximumValueLabel: Text("5"), label: { Text("") })
                Button(action: {
                    self.infoMotivation = true
                }) {
                    Image(systemName: "info.circle")
                        .foregroundColor(Color.gray)
                }
                .padding(.leading, 5)
                .popover(isPresented: self.$infoMotivation) {
                    GeometryReader { _ in
                        InfoMotivationView(info: self.$infoMotivation)
                    }
                }
            }
            .padding(.horizontal, 10)
            CheckinMoodView()
            Divider()
                .padding(.bottom, 10)
            HStack {
                Text("Body")
                    .foregroundColor(Color.gray)
                    .font(.callout)
                Spacer()
            }
            .padding(.horizontal, 30)
            // ENERGY
            HStack(spacing: 0) {
                Text("Energy:")
                    .frame(width: self.textFrameWidth, alignment: .leading)
                Text("\(self.energyValue, specifier: "%.1f")")
                    .frame(width: 30, alignment: .leading)
                Slider(value: self.$energyValue, in: 0...5, minimumValueLabel: Text(""), maximumValueLabel: Text("5"), label: { Text("") })
                Button(action: {
                    self.infoEnergy = true
                }) {
                    Image(systemName: "info.circle")
                        .foregroundColor(Color.gray)
                }
                .padding(.leading, 5)
                .popover(isPresented: self.$infoEnergy) {
                    GeometryReader { _ in
                        InfoEnergyView(info: self.$infoEnergy)
                    }
                }
            }
            .padding(.horizontal, 10)
            // PAIN ------>>>> TODO: will need to change State Variables
            HStack(spacing: 0) {
                Text("Aches and Pains:")
                    .frame(width: self.textFrameWidth, alignment: .leading)
                Text("\(self.energyValue, specifier: "%.1f")")
                    .frame(width: 30, alignment: .leading)
                Slider(value: self.$energyValue, in: 0...5, minimumValueLabel: Text(""), maximumValueLabel: Text("5"), label: { Text("") })
                Button(action: {
                    self.infoEnergy = true
                }) {
                    Image(systemName: "info.circle")
                        .foregroundColor(Color.gray)
                }
                .padding(.leading, 5)
                .popover(isPresented: self.$infoEnergy) {
                    GeometryReader { _ in
                        InfoEnergyView(info: self.$infoEnergy)
                    }
                }
            }
            .padding(.horizontal, 10)
            // OVERALL SORENESS ------>>>> TODO: will need to change State Variables
            HStack(spacing: 0) {
                Text("Overall Soreness:")
                    .frame(width: self.textFrameWidth, alignment: .leading)
                Text("\(self.energyValue, specifier: "%.1f")")
                    .frame(width: 30, alignment: .leading)
                Slider(value: self.$energyValue, in: 0...5, minimumValueLabel: Text(""), maximumValueLabel: Text("5"), label: { Text("") })
                Button(action: {
                    self.infoEnergy = true
                }) {
                    Image(systemName: "info.circle")
                        .foregroundColor(Color.gray)
                }
                .padding(.leading, 5)
                .popover(isPresented: self.$infoEnergy) {
                    GeometryReader { _ in
                        InfoEnergyView(info: self.$infoEnergy)
                    }
                }
            }
            .padding(.horizontal, 10)
            Divider()
            .padding(.bottom, 10)
        }
    }
    
    private let textFrameWidth: CGFloat = 100
}

struct CheckinBodyView_Previews: PreviewProvider {
    static var previews: some View {
        CheckinBodyOtherView()
    }
}*/
