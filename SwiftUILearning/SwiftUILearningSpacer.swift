//
//  SwiftUILearningSpacer.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 07/01/2023.
//

import SwiftUI

struct SwiftUILearningSpacer: View {
    var body: some View {
        VStack(spacing: nil) {
            Spacer()
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(
                    Circle()
                        .foregroundColor(Color.yellow)
                        .frame(width: 100, height: 100)
                )
            
            Spacer()
            
            Text("Hello, World!")
                .background(
                    Circle()
                        .foregroundColor(Color.yellow)
                        .frame(width: 100, height: 100)
                )
            
            Spacer()
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(
                    Circle()
                        .foregroundColor(Color.yellow)
                        .frame(width: 100, height: 100)
                )
            
            Spacer()
        }
        
        .background(Color.red)
        
    }
}

struct SwiftUILearningSpacer_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningSpacer()
    }
}
