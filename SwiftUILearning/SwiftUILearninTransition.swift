//
//  SwiftUILearninTransition.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 17/01/2023.
//

import SwiftUI

struct SwiftUILearninTransition: View {
    
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: .move(edge: .bottom)
                    ))
                    .animation(.easeInOut)
               
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SwiftUILearninTransition_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearninTransition()
    }
}
