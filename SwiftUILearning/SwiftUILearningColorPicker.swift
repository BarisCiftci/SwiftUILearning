//
//  SwiftUILearningColorPicker.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 25/01/2023.
//

import SwiftUI

struct SwiftUILearningColorPicker: View {
    @State var backgroundColor: Color = .green
    
    var body: some View {
        
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            ColorPicker(
                "select a color".capitalized,
                selection: $backgroundColor,
                supportsOpacity: true)
            .padding()
            .background(backgroundColor)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .shadow(radius: 12)
            .padding()
        }
        
    }
}

struct SwiftUILearningColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningColorPicker()
    }
}
