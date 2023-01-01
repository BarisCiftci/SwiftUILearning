//
//  SwiftUILearningSystemIcons.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 01/01/2023.
//

import SwiftUI

struct SwiftUILearningSystemIcons: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .renderingMode(.original)
            .resizable()
            .scaledToFill()
           // .aspectRatio(contentMode: .fit)
           // .font(.system(size: 100))
           // .foregroundColor(.yellow)
            .frame(width: 100, height: 100)
        //.clipped()
            
    }
}

struct SwiftUILearningSystemIcons_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningSystemIcons()
    }
}
