//
//  SwiftUILearningExtractSubviews.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 13/01/2023.
//

import SwiftUI

struct SwiftUILearningExtractSubviews: View {
    
    
    var body: some View {
        ZStack {
            // Background
            Color.blue.ignoresSafeArea(.all)
            
            // Content
            contentLayer
            
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 5, color: Color.red)
            MyItem(title: "Oranges", count: 5, color: Color.orange)
            MyItem(title: "Bananas", count: 5, color: Color.yellow)
        }
    }
    
}

struct SwiftUILearningExtractSubviews_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningExtractSubviews()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(18)
    }
}
