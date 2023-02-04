//
//  SwiftUIeariningEnvironmentObject.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 04/02/2023.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct SwiftUIeariningEnvironmentObject: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }
 
                }
            }
            .navigationTitle("IOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView:View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack {
            //Backgrouond
            Color.orange.ignoresSafeArea()
            
            //Foreground
            NavigationLink(destination: FinalView(),
                           label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                .cornerRadius(30)
                
            })
            
        }
    }
}

struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            //Backgrouond
            LinearGradient(
                colors: [Color.pink, Color.purple],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            //Forground
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct SwiftUIeariningEnvironmentObject_Previews: PreviewProvider {
    static var previews: some View {
      SwiftUIeariningEnvironmentObject()
    }
}
