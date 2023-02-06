//
//  AsyncImage.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 06/02/2023.
//

import SwiftUI

struct AsyncImage: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        Image(systemName: "heart.fill")

    }
}

struct AsyncImage_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImage()
    }
}
