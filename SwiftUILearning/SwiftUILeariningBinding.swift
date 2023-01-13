//
//  SwiftUILeariningBinding.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 13/01/2023.
//

import SwiftUI

struct SwiftUILeariningBinding: View {
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            
            //Background
            backgroundColor
                .ignoresSafeArea(.all)
            
            //Content
            VStack {
                Text(title.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
            
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    
    var body: some View {
        Button(
            action: {
                backgroundColor = Color.orange
                buttonColor = Color.pink
                title = "new title"
            },
            label: {
                Text("Button")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(buttonColor)
                    .cornerRadius(25)
            })
    }
}

struct SwiftUILeariningBinding_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILeariningBinding()
    }
}
