//
//  SwiftUILearningStacks.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 05/01/2023.
//

import SwiftUI

struct SwiftUILearningStacks: View {
    //VSTACK
    //HSTACK
    //ZSTACK
    var body: some View {
        VStack(spacing: 20){
            ZStack(alignment: .trailing){
                
                Rectangle()
                    .fill(Color.gray)
                
                Text("0")
                    .font(.system(size: 62))
                    .fontWeight(.medium)
                    .padding()
            }
            Spacer()
            
            
            HStack(spacing: 20) {
                Circle()
                    .fill(Color.red)
                
                Circle()
                    .fill(Color.red)
                
                Circle()
                    .fill(Color.red)
            }
            
            HStack(spacing: 20) {
                Circle()
                    .fill(Color.red)
                
                Circle()
                    .fill(Color.red)
                
                Circle()
                    .fill(Color.red)
            }
            
            HStack(spacing: 20) {
                Circle()
                    .fill(Color.red)
                
                Circle()
                    .fill(Color.red)
                
                Circle()
                    .fill(Color.red)
            }
            
            HStack(spacing: 20) {
                Circle()
                    .fill(Color.red)
                
                Circle()
                    .fill(Color.red)
                
                Circle()
                    .fill(Color.red)
            }
            
            HStack(spacing: 20) {
                Circle()
                    .fill(Color.red.opacity(0.6))
                    .background(
                    Text("0")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    )
                
                Circle()
                    .fill(Color.red.opacity(0.6))
                .background(
                Text("0")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                )
                
                Circle()
                    .fill(Color.red.opacity(0.6))
                .background(
                Text("=")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                )
            }
            
        }
        .padding(20)
    }
    
    struct SwiftUILearningStacks_Previews: PreviewProvider {
        static var previews: some View {
            SwiftUILearningStacks()
        }
    }
}
