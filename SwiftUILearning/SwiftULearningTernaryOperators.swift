//
//  SwiftULearningTernaryOperators.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 14/01/2023.
//

import SwiftUI

struct SwiftULearningTernaryOperators: View {
    
    @State var isStartingState: Bool = false
    var body: some View {
        VStack{
            Button("Button") {
                isStartingState.toggle()
            }
            .buttonStyle(.bordered)
            
            Text(isStartingState ? "Pink rounded square" : "Blue rectangle")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState == true ? Color.pink : Color.blue)
                .frame(
                    width: isStartingState == true ? 100: 200,
                    height: isStartingState == true ?100: 100
                )
            
            Spacer()
        }
    }
}

struct SwiftULearningTernaryOperators_Previews: PreviewProvider {
    static var previews: some View {
        SwiftULearningTernaryOperators()
    }
}
