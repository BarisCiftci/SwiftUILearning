//
//  SwiftUILearningToggle.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 24/01/2023.
//

import SwiftUI

struct SwiftUILearningToggle: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Status:")
                    .font(.headline)
                
                Text(toggleIsOn ? "Online" : "Offline")
                    .foregroundColor(toggleIsOn ? Color.green : Color.gray)
                    .font(.headline)
            }
            Toggle(
                    isOn: $toggleIsOn,
                    label: {
                        Text("Check status")
                    })
            .toggleStyle(SwitchToggleStyle(tint: Color.green))
            
            Spacer()
        }
    }
}

struct SwiftUILearningToggle_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningToggle()
    }
}
