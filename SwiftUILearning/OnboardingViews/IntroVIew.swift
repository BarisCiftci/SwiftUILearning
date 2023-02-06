//
//  IntroVIew.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 05/02/2023.
//

import SwiftUI

struct IntroVIew: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            //Background
            RadialGradient(
                colors: [Color.blue, Color.pink],
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()
            
            if currentUserSignedIn {
                ProfileView()
            } else {
                OnboardingView()
            }
            
            // If uer is signed in
            // profile view
            // else
            // onboarding view
        }
    }
}

struct IntroVIew_Previews: PreviewProvider {
    static var previews: some View {
        IntroVIew()
    }
}
