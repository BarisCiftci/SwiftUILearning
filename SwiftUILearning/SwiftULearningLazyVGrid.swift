//
//  SwiftULearningLazyVGrid.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 08/01/2023.
//

import SwiftUI

struct SwiftULearningLazyVGrid: View {
    let columns: [GridItem] = [
        GridItem(.adaptive(minimum: 100, maximum: 300), spacing: 8, alignment: nil)
    
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .frame(height: 400)
                .foregroundColor(Color.orange)

            LazyVGrid(columns: columns) {
                ForEach(1..<37) { index in
                    Rectangle()
                        .frame(height: 100)
                        .foregroundColor(Color.pink)
                    
                }
                
            }
            
        }
        .padding(8)
    }
}

struct SwiftULearningLazyVGrid_Previews: PreviewProvider {
    static var previews: some View {
        SwiftULearningLazyVGrid()
    }
}
