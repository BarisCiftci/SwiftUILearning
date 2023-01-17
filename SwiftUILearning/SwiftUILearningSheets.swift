//
//  SwiftUILearningSheets.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 17/01/2023.
//

import SwiftUI

struct SwiftUILearningSheets: View {
    
    @State var showSheet: Bool = false
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("BUTTON")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .padding(.horizontal)
                    .background(Color.white.cornerRadius(18))
            })
            .fullScreenCover(isPresented: $showSheet, content: {
                secondCcreen()
            })
        }
    }
}

struct secondCcreen : View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.pink
                .ignoresSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                HStack {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                    .padding(20)
                    
                    Spacer()
                    
                    Image(systemName: "arrow.down")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                    .padding(20)
                    
                    Spacer()
                    
                    Text("Back")
                        .foregroundColor(.white)
                        .font(.headline)
                    .padding(20)
                    
                    
                }
            })
            
            
            
            }
        }
    }


struct SwiftUILearningSheets_Previews: PreviewProvider {
    static var previews: some View {
         SwiftUILearningSheets()
    }
}
