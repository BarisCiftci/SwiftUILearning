//
//  SwiftUILearningForEach.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 07/01/2023.
//

import SwiftUI

struct SwiftUILearningForEach: View {
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    
    let myString: String = "Hello"
  
    var body: some View {
        
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
                
            }
        }
    }
}

struct SwiftUILearningForEach_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningForEach()
    }
}
