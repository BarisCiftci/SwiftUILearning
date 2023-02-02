//
//  SwiftUILearningStateObservableObjects.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 02/02/2023.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    
  @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 6)
        let fruit2 = FruitModel(name: "Banana", count: 4)
        let fruit3 = FruitModel(name: "Watermelon", count: 9)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
        
        
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct SwiftUILearningStateObservableObjects: View {
    
    //@StateObject -> USE THIS ON CREATION / INIT
    //@ObservedObject -> USE THIS FOR SUBVIEW
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                                    NavigationLink(
                                        destination: RandomScreen(fruitViewModel: fruitViewModel),
                                        label: {
                                            Image(systemName: "arrow.right")
                                                .font(.title)
                                            
                                        })
             )
            
        }
    }
    
    struct RandomScreen: View {
        
        @Environment(\.presentationMode) var presentationMode
        @ObservedObject var fruitViewModel: FruitViewModel
        
        var body: some View {
            ZStack {
                Color.green.ignoresSafeArea()
                
                VStack {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        Text(fruit.name)
                            .font(.headline)
                            .foregroundColor(.white)
                        
                    }
                }

            }
        }
    }
    
}

struct SwiftUILearningStateObservableObjects_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningStateObservableObjects()
    }
}
