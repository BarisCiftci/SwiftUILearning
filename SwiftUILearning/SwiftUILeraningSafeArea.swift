//
//  SwiftUILeraningSafeArea.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 09/01/2023.
//

import SwiftUI

struct SwiftUILeraningSafeArea: View {
    var body: some View {
        ZStack{
            Color.blue
              .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Hello")
                    Spacer()
                Text("Hello")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.red)
        }
    }
}

struct SwiftUILeraningSafeArea_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILeraningSafeArea()
    }
}
