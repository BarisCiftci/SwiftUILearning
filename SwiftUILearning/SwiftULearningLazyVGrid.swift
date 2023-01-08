//
//  SwiftULearningLazyVGrid.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 08/01/2023.
//

import SwiftUI

struct SwiftULearningLazyVGrid: View {
    let columns: [GridItem] = [
        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: 8, alignment: nil)
    
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            
            ForEach(1..<50) { index in
                Rectangle()
                    .frame(height: 50)
                
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
