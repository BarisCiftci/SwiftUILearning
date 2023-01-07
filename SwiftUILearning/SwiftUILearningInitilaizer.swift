//
//  SwiftUILearningInitilaizer.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 07/01/2023.
//

import SwiftUI

struct SwiftUILearningInitilaizer: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .underline()
            
            Text("\(title)")
                .font(.headline)
                .foregroundColor(Color.white)
                .underline()
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(12)
    }
}

struct SwiftUILearningInitilaizer_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            SwiftUILearningInitilaizer(count: 100, fruit: .apple)
            HStack{
                SwiftUILearningInitilaizer(count: 100, fruit: .orange)
                SwiftUILearningInitilaizer(count: 50, fruit: .orange)
            }
        }
    }
}
