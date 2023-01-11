//
//  SwiftUILearningButtons.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 09/01/2023.
//

import SwiftUI



struct SwiftUILearningButtons: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20){
            Text(title)
            Button(action: {
                self.title = "Button First pressed"
            },
                   label: {
                Text("Button First")
                    .fontWeight(.black)
                    .padding()
                    .accentColor(.red)
            })
            
            Button(action: {
                self.title = "Button second pressed"
            },
                   label: {
                Text("Button Second".uppercased())
                    .foregroundColor(.white)
                    .fontWeight(.black)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Color.red
                            .cornerRadius(20)
                    )
            })
            
            Button(action: {
                self.title = "Button  pressed"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            })
            
            
           
        
        }
        
    }
}

struct SwiftUILearningButtons_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningButtons()
    }
}
