//
//  SwiftUILearningScrollView.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 07/01/2023.
//

import SwiftUI

struct SwiftUILearningScrollView: View {
    var body: some View {
        
        ScrollView {
            ForEach(0..<10) { index in
                
                Text("Hello".uppercased())
                    .font(.system(size: 120))
                    .fontWeight(.black)
                    .foregroundColor(.pink)
                
            }
            ScrollView(.horizontal, showsIndicators: true) {
                HStack {
                    ForEach(0..<100) { index in
                        
                        Text("Hello".uppercased())
                            .font(.system(size: 120))
                            .fontWeight(.black)
                            .foregroundColor(.blue)
                        
                    }
                }
            }
            ForEach(0..<10) { index in
                
                Text("Hello".uppercased())
                    .font(.system(size: 120))
                    .fontWeight(.black)
                    .foregroundColor(.orange)
                
            }
        }
        
    }
}

struct SwiftUILearningScrollView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningScrollView()
    }
}
