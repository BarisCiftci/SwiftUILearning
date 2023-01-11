//
//  SwiftUILearningStateProperty.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 11/01/2023.
//

import SwiftUI

struct SwiftUILearningStateProperty: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
   
    
    var body: some View {
        ZStack {
            // backgroun
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            // content
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1".uppercased()) {
                        backgroundColor = .red
                        myTitle = "Button 1 was pressed"
                        count += 1
                        
                    }
                    
                    Button("Button 2".uppercased()) {
                        backgroundColor = .yellow
                        myTitle = "Button 2 was pressed"
                        count -= 1
                    }
                }
                .buttonStyle(.bordered)
            }
            .foregroundColor(Color.white)
        }
    }
}

struct SwiftUILearningStateProperty_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningStateProperty()
    }
}
