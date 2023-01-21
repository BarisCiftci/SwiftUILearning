//
//  SwiftUILearningLists.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 21/01/2023.
//

import SwiftUI

struct SwiftUILearningLists: View {
    
    @State var fruits: [String] = ["Apples", "Bananas", "Orange", "Peach", "Potato", "Carrot", "Cocumber", "Potato", "Carrot", "Cocumber"]
    @State var veggies: [String] = ["Tomato", "Potato", "Carrot", "Cocumber", "Potato", "Carrot", "Cocumber", "Potato", "Carrot", "Cocumber", "Potato", "Carrot", "Cocumber", "Potato", "Carrot", "Cocumber", "Potato", "Carrot", "Cocumber"]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header: HStack {
                        Text("Fruits".uppercased())
                            .foregroundColor(Color.orange)
                        
                        Image(systemName: "carrot.fill")
                            .font(.body)
                            .foregroundColor(Color.orange)
                    }
                ) {
                        ForEach(fruits, id: \.self) {fruit in
                            Text(fruit)
                                
                                .foregroundColor(.white)
                                .padding(.vertical, 20)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(Color.orange)
                                .cornerRadius(40)
                                
                   }
                   .onDelete(perform: delete)
                   .onMove(perform: move)
                   
                   
                }
                
                
                Section(
                    header: HStack {
                        Text("Veggies".uppercased())
                            .foregroundColor(Color.purple)
                        
                        Image(systemName: "birthday.cake.fill")
                            .font(.body)
                            .foregroundColor(Color.purple)
                    }
                ) {
                        ForEach(veggies, id: \.self) {veggi in
                            Text(veggi)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(Color.purple)
                                .cornerRadius(25)
                   }
                   
                }
                
                
                
            }
            .listStyle(.plain)
            .navigationTitle(Text("Grocery List".uppercased())
                .foregroundColor(Color.pink))
            .navigationBarItems(leading: EditButton(), trailing: addButton)
            
        }
        .accentColor(.pink)
    }
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
        }
    
    func add() {
        fruits.append("Coconut")
    }
    }


struct SwiftUILearningLists_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningLists()
    }
}
