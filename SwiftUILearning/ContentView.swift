//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 30/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            Text("Hello, world!")
                .fontWeight(.black)
                .font(.title)
                .foregroundColor(Color.pink)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
