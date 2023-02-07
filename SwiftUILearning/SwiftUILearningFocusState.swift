//
//  SwiftUILearningFocusState.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 07/02/2023.
//

import SwiftUI

struct SwiftUILearningFocusState: View {
    @FocusState private var userNameInFocus: Bool
    @State private var userName: String = ""
    
    @FocusState private var passwordInFocus: Bool
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            TextField("Add your name here", text: $userName)
                .focused($userNameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(18)
            
            SecureField("Add your password here", text: $password)
                .focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(18)
            Button("Signin") {
                let usernameIsValid = !userName.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("SIgnUP")
                } else if usernameIsValid {
                    userNameInFocus = false
                    passwordInFocus = true
                    
                } else {
                    userNameInFocus = true
                    passwordInFocus = false
                }
            }
            
            Button("Toggle focus state") {
                userNameInFocus.toggle()
            }
        }
        .padding()
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.userNameInFocus = true
            }
        }
    }
}

struct SwiftUILearningFocusState_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILearningFocusState()
    }
}
 
