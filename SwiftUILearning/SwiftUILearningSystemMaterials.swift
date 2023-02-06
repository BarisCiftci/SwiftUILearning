//
//  SwiftUILearningSystemMaterials.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 06/02/2023.
//

import SwiftUI

struct SwiftUILearningSystemMaterials: View {
    var body: some View {
        VStack {
            Spacer()
            VStack{
                Image(systemName: "arrow.up")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("player_1")
        
        )
    }
}

struct SwiftUILearningSystemMaterials_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningSystemMaterials()
    }
}
