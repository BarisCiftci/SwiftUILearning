//
//  SwiftUILearningContextMenu.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 24/01/2023.
//

import SwiftUI

struct SwiftUILearningContextMenu: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            
            Image(systemName: "house.fill")
                .font(.title)
            Text("ENB Creative")
                .font(.headline)
            Text("How to use context menu")
                .font(.subheadline)
        }
        .foregroundColor(Color.white)
        .padding()
        .background(backgroundColor)
        .cornerRadius(18)
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = Color.red
            }, label: {
                Label("RED", systemImage: "heart.fill")
            })
            
            Button(action: {
                backgroundColor = Color.green
            }, label: {
                Label("GREEN", systemImage: "heart.fill")
            })
            
            Button(action: {
                backgroundColor = Color.blue
            }, label: {
                Label("BLUE", systemImage: "heart.fill")
            })
        })
    }
}

struct SwiftUILearningContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningContextMenu()
    }
}
