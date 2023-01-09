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
        VStack{
            Text(title)
            
            Button(action: {
                self.title = "Button First pressed"
            },
                   label: {
                Text("Button First")
                    .foregroundColor(.white)
                    .fontWeight(.black)
                    .padding()
                    .background(
                    
                    Capsule()
                        .frame(width: 120, height: 40)
                        .foregroundColor(.pink)
                    )
            })
            
            Button(action: {
                self.title = "Button second pressed"
            },
                   label: {
                Text("Button Second")
                    .foregroundColor(.white)
                    .fontWeight(.black)
                    .padding()
                    .background(
                    
                    Capsule()
                        .frame(width: 160, height: 40)
                        .foregroundColor(.blue)
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
