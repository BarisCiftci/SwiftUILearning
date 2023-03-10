//
//  OnboardingView.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 05/02/2023.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - PROPERTIES
    
    // Onboarding States:
    /*
     0 - Wecome screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    
    //Onboarding Inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    //For the alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    //appStorage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack{
            //Content
            switch onboardingState {
            case 0:
                welcomeSection
                    .transition(transition)
            case 1:
                addNameSection
                    .transition(transition)
            case 2:
                addAgeSection
                    .transition(transition)
            case 3:
                addGenderSection
                    .transition(transition)
            default:
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color.green)
            }
            
            //Button
            VStack {
                Spacer()
                bottomButton
            }
            .padding()
        }
        .alert(isPresented: $showAlert, content: {
            return Alert(title: Text(alertTitle))
        })
    }
    
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.pink)
    }
}
// MARK: - COMPONENTS
extension OnboardingView {
    
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "SIGN UP" :
                onboardingState == 3 ? "FINISH" :
                "NEXT"
        
        )
            .font(.headline)
            .foregroundColor(Color.pink)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(18)
            .animation(nil)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Image(systemName: "heart.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .foregroundColor(.white)
            
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding()
    }
    
    private var addNameSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What is your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(18)
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.leading)
        .padding()
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What is your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.leading)
        .padding()
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What is your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Picker(selection: $gender,
                   content: {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
                Text("Non-Binary").tag("Non-Binary")
                
            }
                   , label: {
                Text(gender.count > 1 ? gender : "Select a gender")
                    .foregroundColor(.white)
            })
            
            .pickerStyle(.menu)
            .foregroundColor(.white)
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.leading)
        .padding()
        
    }
}
// MARK: - FUNCTIONS
extension OnboardingView {
    
    func handleNextButtonPressed() {
        // check input
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be at least 3 characters.")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Please select gender before moving forward")
                return
            }
        default:
            break
        }
        // go to next section
        
        
        if onboardingState == 3 {
            // sign in
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
        
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }  
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}
