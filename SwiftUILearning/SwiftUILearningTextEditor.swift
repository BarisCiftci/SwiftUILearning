//
//  SwiftUILearningTextEditor.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 24/01/2023.
//

import SwiftUI

struct SwiftUILearningTextEditor: View {
    
    @State var textEditorText: String = "This is starting text"
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundColor(.pink)
                    .cornerRadius(20)
                    
                
                Button(action: {
                    savedText = textEditorText
                  
                }, label: {
                    Text("save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(20)
                })
                Text(savedText)
                
                Spacer()
            }
            
            .padding()
            .background(Color.pink)
            .navigationTitle("text editor title".capitalized)
            
        }
        
    }
}

struct SwiftUILearningTextEditor_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningTextEditor()
    }
}
