//
//  SwiftUILearningFrames.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 01/01/2023.
//

import SwiftUI

struct SwiftUILearningFrames: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.red)
            .frame(height: 100)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity)
            .background(Color.pink)
            .frame(height: 100)
            .background(Color.green)
            .frame(maxHeight: .infinity)
            .background(Color.yellow)
            
    }
}

struct SwiftUILearningFrames_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningFrames()
    }
}
