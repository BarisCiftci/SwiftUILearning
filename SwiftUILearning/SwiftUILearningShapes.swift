//
//  SwiftUILearningShapes.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 31/12/2022.
//

import SwiftUI

struct SwiftUILearningShapes: View {
    var body: some View {
        
        
     //   Circle()
     //   Ellipse()
     //   Capsule(style: .circular)
     //   Rectangle()
          RoundedRectangle(cornerRadius: 120)
         //   .fill(Color.pink)
         //   .foregroundColor(Color.green)
        //    .stroke(Color.pink, lineWidth: 50)
        //    .stroke(Color.pink, style: StrokeStyle(lineWidth: 50, lineCap: .round, dash: [60]))
        //    .trim(from: 0.2, to: 1.0)
              .stroke(Color.pink, lineWidth: 50)
              .frame(width: 200, height: 400)
        
        
        
    }
    
}

struct SwiftUILearningShapes_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningShapes()
    }
}
