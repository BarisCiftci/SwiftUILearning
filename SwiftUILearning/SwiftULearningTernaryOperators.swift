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
            Button(isStartingState ? "pink".uppercased() : "blue".uppercased()) {
                isStartingState.toggle()
                    
            }
            .foregroundColor(isStartingState == true ? Color.pink : Color.blue)
            .buttonStyle(.bordered)
            
            Text(isStartingState ? "Pink rounded square" : "Blue rectangle")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(isStartingState == true ? Color.pink : Color.blue)
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState == true ? Color.pink : Color.blue)
                .frame(
                    width: isStartingState == true ? 100: 200,
                    height: isStartingState == true ?100: 100
                )
            Spacer()
            
            Image(systemName: "heart.fill")
                .font(.system(size: 120))
                .foregroundColor(isStartingState == true ? Color.pink : Color.blue)
            
            Spacer()
        }
    }
}

struct SwiftULearningTernaryOperators_Previews: PreviewProvider {
    static var previews: some View {
        SwiftULearningTernaryOperators()
    }
}
