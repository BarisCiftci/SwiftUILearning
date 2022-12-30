//
//  SwiftUILearningText.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 31/12/2022.
//

import SwiftUI

struct SwiftUILearningText: View {
    var body: some View {
        
        Text("Hello, World!".uppercased())
//            .font(.largeTitle)
//            .fontWeight(.heavy)
//            .bold()
              .foregroundColor(Color.pink)
//            .underline()
//            .underline(true, color: Color.yellow)
//            .italic()
//            .strikethrough(true, color: Color.green)
              .font(.system(size: 118, weight: .semibold, design: .none))
            .baselineOffset(20)
            .kerning(1)
            .multilineTextAlignment(.leading)
            .frame(width: 250, height: 200, alignment: .leading)
    }
}

struct SwiftUILearningText_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningText()
    }
}
