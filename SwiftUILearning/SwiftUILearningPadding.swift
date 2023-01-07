//
//  SwiftUILearningPadding.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 07/01/2023.
//

import SwiftUI

struct SwiftUILearningPadding: View {
    var body: some View {
        Text("Hello, World!")
         //   .background(Color.pink)
         //   .padding(.all, 10)
         //   .padding(.top, 10)
            //   .padding(.init(top: 15, leading: 10, bottom: 50, trailing: 20))
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.system(size: 62))
            .foregroundColor(.blue)
            .background(Color.white)
            .shadow(color: Color.blue.opacity(0.5), radius: 12, x: 3, y: 0)
    }
}

struct SwiftUILearningPadding_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningPadding()
    }
}
