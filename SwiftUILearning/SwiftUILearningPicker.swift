//
//  SwiftUILearningPicker.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 25/01/2023.
//

import SwiftUI

struct SwiftUILearningPicker: View {
    
    @State var selection: String = "1"
    
    var body: some View {
        VStack {
            HStack{
                Text("Age:")
                Text(selection)
            }
            .fontWeight(.bold)
            Picker(
                selection: $selection,
                label: Text("Hello"),
                content: {
                    ForEach(18..<124) { number in
                        Text("\(number)")
                            .tag("\(number)")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
            })
            .pickerStyle(.wheel)
            .background(Color.red)
            .cornerRadius(20)
            .padding(.horizontal, 20)
        }
    }
}

struct SwiftUILearningPicker_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningPicker()
    }
}
