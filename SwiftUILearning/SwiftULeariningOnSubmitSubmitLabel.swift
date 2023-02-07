//
//  SwiftULeariningOnSubmitSubmitLabel.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 07/02/2023.
//

import SwiftUI

struct SwiftULeariningOnSubmitSubmitLabel: View {
    
    @State private var text: String = ""
    
    var body: some View {
        TextField("Placeholder...", text: $text)
            .submitLabel(.route)
            .onSubmit {
                print("hello")
            }
    }
}

struct SwiftULeariningOnSubmitSubmitLabel_Previews: PreviewProvider {
    static var previews: some View {
        SwiftULeariningOnSubmitSubmitLabel()
    }
}
