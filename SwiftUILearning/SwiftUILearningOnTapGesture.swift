//
//  SwiftUILearningOnTapGesture.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 01/02/2023.
//

import SwiftUI

struct SwiftUILearningOnTapGesture: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20.0)
                .clipShape(Circle())
                .frame(maxWidth: .infinity, maxHeight: 260)
                .foregroundColor(isSelected ? Color.green : Color.red)
                
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.pink)
                    .cornerRadius(20.0)
            })
            
            Text("On top Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.orange)
                .cornerRadius(20.0)
     //just to add .onTapGesture modifier
                .onTapGesture {
                    isSelected.toggle()
                }
            
            Spacer()
        }
        .padding()
    }
}

struct SwiftUILearningOnTapGesture_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningOnTapGesture()
    }
}
