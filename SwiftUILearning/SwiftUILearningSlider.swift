//
//  SwiftUILearningSlider.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 26/01/2023.
//

import SwiftUI

struct SwiftUILearningSlider: View {
    
    @State var sliderValue: Double = 10
    
    var body: some View {
        VStack {
            Text("Rating")
            Text(
                String(format: "%.0f", sliderValue)
               // "\(sliderValue)"
            )
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 1...5)
            Slider(value: $sliderValue, in: 1...5, step: 1.0)
                .accentColor(.pink)
        }
        .padding()
    }
}

struct SwiftUILearningSlider_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningSlider()
    }
}
