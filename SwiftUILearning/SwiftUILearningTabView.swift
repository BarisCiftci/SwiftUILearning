//
//  SwiftUILearningTabView.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 29/01/2023.
//

import SwiftUI

struct SwiftUILearningTabView: View {
    @State var selectedTab: Int = 0
    
    let icons: [String] = ["heart.fill", "house.fill", "person.fill", "globe"]

    var body: some View {
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
        }
        .background(Color.red)
        .frame(height: 300)
        .cornerRadius(25)
        .padding()
        .tabViewStyle(PageTabViewStyle())
                
//        TabView(selection: $selectedTab) {
//
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//
//            Text("BORWSE TAB")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//
//            Text("PROFILE TAB")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//
//        }.accentColor(.red)
    }
    
}

struct SwiftUILearningTabView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningTabView()
    }
}

struct HomeView: View {
    @Binding var selectedTab: Int
    var body: some View {
        ZStack {
            Color.red
            VStack {
                Text("HOME TAB")
                    .font(.title)
                    .foregroundColor(.white)
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(25)
                })
            }
        }
        
    }
}
