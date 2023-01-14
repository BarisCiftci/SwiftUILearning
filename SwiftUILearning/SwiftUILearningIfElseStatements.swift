//
//  SwiftUILearningIfElseStatements.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 14/01/2023.
//

import SwiftUI

struct SwiftUILearningIfElseStatements: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea(.all)
            
                    //Button Vstack
            VStack {
                VStack{
                    Button("Circle Button: \(showCircle.description)") {
                        showCircle.toggle()
                    }
                    
                    Button("Rectangle Button: \(showRectangle.description)") {
                        showRectangle.toggle()
                    }
                }//Button Vstack
                .buttonStyle(.bordered)
                .foregroundColor(.white)
                
                Spacer()
        
        VStack(spacing: 20) {
            // If Statement
            if showCircle{
                circleViewGreen
            }
            if showRectangle {
                circleViewOrange
            }
            if showCircle && showRectangle {
                circleViewRed
            }
        }
                Spacer()
            }
               
        }
        .background(Color.gray)
    }
        
    
    var circleViewGreen: some View{
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(Color.green)
    }
    
    var circleViewOrange: some View{
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(Color.orange)
    }
    
    var circleViewRed: some View{
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(Color.red)
    }
}

struct SwiftUILearningIfElseStatements_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningIfElseStatements()
    }
}
