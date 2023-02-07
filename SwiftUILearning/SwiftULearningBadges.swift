//
//  SwiftULearningBadges.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 07/02/2023.
//

import SwiftUI

struct SwiftULearningBadges: View {
    var body: some View {
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                        Text("Hello")
                        .badge("new")
                }
                .badge(54543)
            
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                        Text("Hello")
                }
            
            Color.yellow
                .tabItem {
                    Image(systemName: "heart.fill")
                        Text("Hello")
                        
                }
                .badge(99)
        }
    }
}

struct SwiftULearningBadges_Previews: PreviewProvider {
    static var previews: some View {
        SwiftULearningBadges()
    }
}
