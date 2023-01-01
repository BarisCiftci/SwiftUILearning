//
//  SwiftUILearningGradients.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 01/01/2023.
//

import SwiftUI

struct SwiftUILearningGradients: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
            //    Color.pink
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.blue, Color.pink, Color.orange]),
//                    startPoint: .bottomLeading,
//                    endPoint: .topTrailing)
                
                RadialGradient(gradient: Gradient(colors: [Color.orange,Color.pink, Color.blue]),
                               center: .topLeading,
                               startRadius: 0,
                               endRadius: 400)
            )
            .frame(width: 300, height: 200)
            
    }
}

struct SwiftUILearningGradients_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningGradients()
    }
}
