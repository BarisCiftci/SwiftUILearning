//
//  SwiftUILearningDarkMode.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 29/01/2023.
//

import SwiftUI

struct SwiftUILearningDarkMode: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack{
                    Text("Primary Text")
                        .foregroundColor(.primary)
                    
                    Text("secondary Text")
                        .foregroundColor(.secondary)
                    
                    Text("Black Text")
                        .foregroundColor(.black)
                    
                    Text("White Text")
                        .foregroundColor(.white)
                    
                    Text("Adaptive Text")
                        .foregroundColor(Color("CustomColor"))
                    
                    Text("Locally Adaptive Text")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
                .font(.largeTitle)
            }
            .navigationTitle("Dark Mode")
        }
    }
}

struct SwiftUILearningDarkMode_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningDarkMode()
    }
}
