//
//  SwiftUiSwipeActions.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 07/02/2023.
//

import SwiftUI

struct SwiftUiSwipeActions: View {
    
    @State var fruits: [String] = ["Apples", "Bananas", "Orange", "Peach", "Potato", "Carrot", "Cocumber", "Potato", "Carrot", "Cocumber"]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing,
                                  allowsFullSwipe: true) {
                        Button("share") {
                            
                        }
                        .tint(.pink)
                        Button("junk") {
                            
                        }
                        Button("Save") {
                            
                        }
                    }
            }
           // .onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

struct SwiftUiSwipeActions_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUiSwipeActions()
    }
}
