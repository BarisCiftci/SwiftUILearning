//
//  SwiftUILearningModelDataTypes.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 01/02/2023.
//

import SwiftUI
struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
    let profilColor: Color
}

struct SwiftUILearningModelDataTypes: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Natalia", userName: "natka75", followerCount: 254, isVerified: false, profilColor: .blue),
        UserModel(displayName: "Zozo", userName: "zozoka201", followerCount: 368, isVerified: true, profilColor: .pink),
        UserModel(displayName: "Baris", userName: "baro58", followerCount: 759, isVerified: false, profilColor: .green)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack {
                        Circle()
                            .frame(width: 35, height: 35)
                            .foregroundColor(user.profilColor)
                            
                        
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.displayName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                }
               .padding(.vertical, 10)
                    
                }
            }
            .navigationTitle("Users")
        }
    }
}

struct SwiftUILearningModelDataTypes_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningModelDataTypes()
    }
}
