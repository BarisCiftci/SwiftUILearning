//
//  SwiftUILearningAppStorage.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 05/02/2023.
//

import SwiftUI

struct SwiftUILearningAppStorage: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        
        
        VStack(spacing: 20) {
            
            if let name = currentUserName {
                Text(name)
            } else {
                Text("there is no User Name")
            }
            
            Button("Save") {
                let name = "Zozko"
                currentUserName = name
            }
        }
        
    }
}

struct SwiftUILearningAppStorage_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningAppStorage()
    }
}
