//
//  SwiftULearningAllerts.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 22/01/2023.
//

import SwiftUI

struct SwiftULearningAlerts: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.yellow
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            Button("Change the color", action: {
            showAlert.toggle()
            })
        }.alert(isPresented: $showAlert, content: {
            
            Alert(
                title: Text("Color"),
                message: Text("please choose any color to change background color"),
                primaryButton: .destructive(Text("Pink"), action: {
                    backgroundColor = .pink
                }),
                secondaryButton: .destructive(Text("Orange"), action: {
                    backgroundColor = .orange
                }))
        })
    }
  }

struct SwiftULearningAllerts_Previews: PreviewProvider {
    static var previews: some View {
        SwiftULearningAlerts()
    }
}
