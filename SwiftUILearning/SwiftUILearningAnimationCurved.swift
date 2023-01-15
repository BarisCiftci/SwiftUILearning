//
//  SwiftUILearningAnimationCurved.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 15/01/2023.
//

import SwiftUI

struct SwiftUILearningAnimationCurved: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 0.3
    
    var body: some View {
        VStack{
            Button("Button") {
                isAnimating.toggle()
            }
            Spacer()
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ?  350 : 50, height: 100)
                .animation(Animation.spring(
                    response: 1.0,
                dampingFraction: 2,
                blendDuration: 1))
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ?  350 : 50, height: 100)
                .animation(Animation.easeIn(duration: timing))
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ?  350 : 50, height: 100)
                .animation(Animation.easeInOut(duration: timing))
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ?  350 : 50, height: 100)
                .animation(Animation.easeOut(duration: timing))
            
            Spacer()
        }
    }
}

struct SwiftUILearningAnimationCurved_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningAnimationCurved()
    }
}
