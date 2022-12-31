//
//  SwiftUILearningColors.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 31/12/2022.
//

import SwiftUI

struct SwiftUILearningColors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
             //   Color.secondary
             //   Color(#colorLiteral(red: 0.5, green: 0.3, blue: 0.8, alpha: 1))
             //   Color(uiColor: .secondarySystemBackground)
                  Color("CustomColor")
            )
            .frame(width: 300, height: 200)
          //  .shadow(radius: 8)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: 8, y: 8)
            
    }
}

struct SwiftUILearningColors_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningColors()
    }
}
