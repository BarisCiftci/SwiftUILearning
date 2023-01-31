//
//  SwiftULearningAppearDisappear.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 31/01/2023.
//

import SwiftUI

struct SwiftULearningAppearDisappear: View {
    
    @State var myText: String = "Start Text"
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                    myText = "This is new text!"
                })
            })
            .onDisappear(perform: {
                myText = "End the text."
            })
            .navigationTitle("on Appear")
        }
    }
}

struct SwiftULearningAppearDisappear_Previews: PreviewProvider {
    static var previews: some View {
        SwiftULearningAppearDisappear()
    }
}
