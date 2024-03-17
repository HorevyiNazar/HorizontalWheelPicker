//
//  ContentView.swift
//  HorizontalWheelPicker
//
//  Created by Назар Горевой on 17/03/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var config: WheelPicker.Config = .init(count: 30, steps: 5, spacing: 15, multiplier: 10)
    @State private var value: CGFloat = 10
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .lastTextBaseline, spacing: 5, content: {
                    Text(verbatim: "\(value)")
                        .font(.largeTitle.bold())
                        .contentTransition(.numericText(value: value))
                        .animation(.snappy, value: value)
                    
                    Text("lbs")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .textScale(.secondary)
                        .foregroundStyle(.gray)
                    

                })
                .padding(.bottom, 30)
                
                WheelPicker(config: config, value: $value)
                    .frame(height: 60)
            }
            .navigationTitle("Wheel Picker")
        }
    }
}

#Preview {
    ContentView()
}
