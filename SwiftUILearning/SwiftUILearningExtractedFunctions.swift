//
//  SwiftUILearningExtractedFunctions.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 12/01/2023.
//

import SwiftUI

struct SwiftUILearningExtractedFunctions: View {
    
    @State var backgroundColor: Color = Color.pink
    @State var myTitle: String = "Pink"
    
    var body: some View {
        ZStack {
            
            //Background
            backgroundColor.ignoresSafeArea()
            
            //Content
            content
            
        }
    }
   
    var content: some View {
        VStack {
            //Title Text
            Text(myTitle)
                .font(.largeTitle)
            .fontWeight(.semibold)
            
            //Button
            Button(
                // Action: function of the button (What will happen when the button is pressed)
                action: {
                    buttonPressed()
                },
                
                // Label: UI design of the button
                label: {
                    Text("Press me".uppercased())
                        .font(.title)
                        .padding(.horizontal)
                        .padding(10)
                        .background()
                        .cornerRadius(25)
                        
                })// button end
            // Button modifiers
            
            
            
            
        }
    }
    
    func buttonPressed() {
        backgroundColor = Color.green
        myTitle = "Green"
        
    }
}

struct SwiftUILearningExtractedFunctions_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningExtractedFunctions()
    }
}
