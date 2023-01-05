//
//  SwiftUILearningImages.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 01/01/2023.
//

import SwiftUI

struct SwiftUILearningImages: View {
    var body: some View {
        Image("player_1")
            .resizable()
            //.aspectRatio(contentMode: .fill)
             .scaledToFit()
            //.scaledToFill()
            //.frame(width: 300, height: 300)
            //.clipped()
             .cornerRadius(25)
             .padding()
             .shadow(color: Color.blue.opacity(0.4), radius: 10, x: 4, y: 4)
            // .opacity(0.2)
        
             
    }
}

struct SwiftUILearningImages_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningImages()
    }
}
