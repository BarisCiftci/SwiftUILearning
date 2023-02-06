//
//  ProfileView.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 06/02/2023.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your Name here")
            Text("This User is \(currentUserAge ?? 0) years old!")
            Text("Their gender is \(currentUserGender ?? "uknown")")
            
            Text("SIGN OUT")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .cornerRadius(18)
                .onTapGesture {
                    signOut()
                }
            
        }
        .font(.title)
        .foregroundColor(Color.pink)
        .padding()
        .padding(.vertical, 40)
        .background(Color.white)
        .cornerRadius(25)
        .shadow(radius: 10)
    }
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
