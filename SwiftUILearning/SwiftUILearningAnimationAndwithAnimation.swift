//
//  SwiftUILearningAnimationAndwithAnimation.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 14/01/2023.
//

import SwiftUI

struct SwiftUILearningAnimationAndwithAnimation: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack{
            Button("button")
            {
                withAnimation(Animation
                    .default
                ){
                    isAnimated.toggle()
                }
                
                
            }
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 25 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 50 : 300,
                    height: isAnimated ? 50 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 45 : 0))
                .offset(y: isAnimated ? 300 : 0)
                
            
            Spacer()
        }
    }
}

struct SwiftUILearningAnimationAndwithAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningAnimationAndwithAnimation()
    }
}
