//
//  SwiftUILearningStepper.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 26/01/2023.
//

import SwiftUI

struct SwiftUILearningStepper: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack(alignment: .leading) {
                
            HStack {
                Image(systemName: "volume")
                    .font(.title)
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 100 + widthIncrement, height: 10, alignment: .leading)
            }
            
            Stepper(" ") {
                withAnimation(.easeInOut(duration: 0.1)) {
                    widthIncrement += 100
                }
            } onDecrement: {
                widthIncrement -= 100
            }

        }.padding()
    }
}

struct SwiftUILearningStepper_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningStepper()
    }
}
