//
//  SwiftUILearningShapes.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 31/12/2022.
//

import SwiftUI

struct SwiftUILearningShapes: View {
    
    @State var isSize: Bool = false
    
    var body: some View {
        
        
     //   Circle()
     //   Ellipse()
     //   Capsule(style: .circular)
     //   Rectangle()
        ZStack {
            
            RoundedRectangle(cornerRadius: 120)
             //   .fill(Color.pink)
             //   .foregroundColor(Color.green)
            //    .stroke(Color.pink, lineWidth: 50)
            //    .stroke(Color.pink, style: StrokeStyle(lineWidth: 50, lineCap: .round, dash: [60]))
            //    .trim(from: 0.2, to: 1.0)
                .stroke(isSize ? Color.green: Color.gray, lineWidth:50)
                  .frame(width: 200, height: isSize ? 200 : 600)
                  .animation(Animation.easeInOut(duration: 0.1), value: isSize)
            
            Button(action: {
                isSize.toggle()
            }) {
                Circle()
                    .frame(width: 80, height: 80)
                    .foregroundColor(isSize ? Color.green : Color.gray)
            }
        }
        
        
        
    }
    
}

struct SwiftUILearningShapes_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningShapes()
    }
}
