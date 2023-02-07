//
//  SwiftUILearningButtonStyle.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 07/02/2023.
//

import SwiftUI

struct SwiftUILearningButtonStyle: View {
    var body: some View {
        VStack {
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
            .buttonBorderShape(.capsule)
            .buttonStyle(.bordered)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
            .buttonStyle(.bordered)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.mini)
            .buttonStyle(.bordered)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.small)
            .buttonStyle(.bordered)
        }
        .padding()
    }
}

struct SwiftUILearningButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningButtonStyle()
    }
}
