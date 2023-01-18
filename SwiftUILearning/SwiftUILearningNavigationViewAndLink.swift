//
//  SwiftUILearningNavigationViewAndLink.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 18/01/2023.
//

import SwiftUI

struct SwiftUILearningNavigationViewAndLink: View {
    var body: some View {
        NavigationView{
            
            ScrollView {
                NavigationLink(("Hello"), destination: mySecondScreen())
                
                Text("Hello")
                Text("Hello")
                Text("Hello")
                Text("Hello")
                }
                .navigationTitle(Text("All Inboxes"))
               // .navigationBarTitleDisplayMode(.automatic)
               // .navigationBarHidden(true)
                .navigationBarItems(
                    leading:
                        HStack {
                            NavigationLink(destination: SwiftUILearningSystemIcons())
                        {
                            Image(systemName: "heart.fill")
                                .foregroundColor(.red)
                            Image(systemName: "heart.fill")
                                .foregroundColor(.green)
                            Image(systemName: "heart.fill")
                                .foregroundColor(.yellow)
                    }
                        },
                    
                
                    trailing: Image(systemName: "arrow.right"))
            }
        }
    }

struct mySecondScreen: View {
    
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        ZStack{
            Color.pink
                .ignoresSafeArea(.all)
                .navigationTitle("Green screen")
                //.navigationBarHidden(true)
            
            VStack{
                Button("BACK BUTTON") {
                    mode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click here", destination: Text("My 3th screen"))
            }
            
            
        }
    }
}
    
    struct SwiftUILearningNavigationViewAndLink_Previews: PreviewProvider {
        static var previews: some View {
            SwiftUILearningNavigationViewAndLink()
        }
    }
