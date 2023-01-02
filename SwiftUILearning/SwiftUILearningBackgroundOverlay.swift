//
//  SwiftUILearningBackgroundOverlay.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 02/01/2023.
//

import SwiftUI

struct SwiftUILearningBackgroundOverlay: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(
                                colors: [Color.blue,
                                         Color.orange ]
                            ),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: .blue.opacity(0.5), radius: 4, x: 0, y: 5)
                    .overlay(
                    Circle()
                        .fill(Color.pink)
                        .frame(width: 30, height: 30)
                        .shadow(color: .blue.opacity(0.5), radius: 2, x: 2, y: 2)
                        .overlay(
                            Text("12")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        
                        )
                        
                    , alignment: .topTrailing
                    )
                
            
            )
    }
}

struct SwiftUILearningBackgroundOverlay_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningBackgroundOverlay()
    }
}
