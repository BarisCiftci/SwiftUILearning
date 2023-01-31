//
//  SwiftUILearningIfLetGuard.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 31/01/2023.
//

import SwiftUI

struct SwiftUILearningIfLetGuard: View {
    
    @State var currentUserID: String? = nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Here we are practicing safe codding!")
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                if isLoading {
                    ProgressView()
                }
                
            }
            .navigationTitle("Safe Coding")
            .onAppear{
                loadData2()
            }
        }
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "ERROR: There is no User ID!"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            displayText = "This is the new data! \(userID)"
            isLoading = false
            
        }
        
        func loadData() {
            
            if let userID = currentUserID {
                isLoading = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    displayText = "This is the new data! \(userID)"
                    isLoading = false
                }
            } else {
                displayText = "ERROR: There is no User ID!"
            }
        }
    }
    
}
    
    struct SwiftUILearningIfLetGuard_Previews: PreviewProvider {
        static var previews: some View {
            SwiftUILearningIfLetGuard()
        }
    }

