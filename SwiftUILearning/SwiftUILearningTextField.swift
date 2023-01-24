//
//  SwiftUILearningTextField.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 24/01/2023.
//

import SwiftUI

struct SwiftUILearningTextField: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                   // .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(Color.pink)
                    .font(.headline)
                    .padding(.horizontal)
                
                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }
                }, label: {
                    Text("save".uppercased())
                        .padding()
                        .padding(.horizontal)
                        .background(textIsAppropriate() ? Color.green : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(Color.white)
                        .font(.headline)
                })
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            
            .navigationTitle("Title")
            .padding()
        }
        
    
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText .count >= 3 {
            return true
        }
        return false
    }
    
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct SwiftUILearningTextField_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningTextField()
    }
}
