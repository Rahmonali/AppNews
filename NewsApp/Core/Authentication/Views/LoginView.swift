//
//  LoginView.swift
//  NewsApp
//
//  Created by Rahmonali on 25/02/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @EnvironmentObject var authViewModel: AuthViewModel
    @FocusState var focused: FocusedAuth?
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.6), Color.gray.opacity(0.2)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .opacity(0.6)
                    .ignoresSafeArea()
                
                VStack (alignment: .center, spacing: 20) {
                    usernameTextField
                    passwordTextField
                    customErrorMessage
                    continueButton
                    
                    NavigationLink {
                        SignUpView()
                    } label: {
                        Text("Create new acount")
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    LoginView()
}

extension LoginView {
    private var usernameTextField: some View {
        VStack (alignment: .leading, spacing: 10) {
            
            Text("Enter your username")
                .font(.callout.bold())
            
            TextField("Username", text: $username)
                .modifier(IntiqolTextModifier(borderColor: HelperFunctions.changeBorderStroke(username, isValidUsername())))
                .keyboardType(.default)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.none)
                .textContentType(.username)
                .focused($focused, equals: .username)
                .shadow(color: focused == .username ?
                        HelperFunctions.changeBorderStroke(username, isValidUsername()).opacity(0.3) :
                        .clear, radius: 10, x: 0, y: 4)
                .shadow(color: focused == .username ?
                        HelperFunctions.changeBorderStroke(username, isValidUsername()).opacity(0.5) :
                        .clear, radius: 5, x: 0, y: 3)
            
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        self.focused = .username
                    }
                }
        }
    }
    
    private var passwordTextField: some View {
        VStack (alignment: .leading, spacing: 10) {
            Text("Enter your password")
                .font(.callout.bold())
            
            SecureField("Password", text: $password)
                .modifier(IntiqolTextModifier(borderColor: HelperFunctions.changeBorderStroke(password, isValidPassword())))
                .keyboardType(.asciiCapable)
                .focused($focused, equals: .password)
                .shadow(color: focused == .password ?
                        HelperFunctions.changeBorderStroke(password, isValidPassword()).opacity(0.3) :
                        .clear, radius: 10, x: 0, y: 4)
                .shadow(color: focused == .password ?
                        HelperFunctions.changeBorderStroke(password, isValidPassword()).opacity(0.5) :
                        .clear, radius: 5, x: 0, y: 3)
        }
    }
    
    private var customErrorMessage: some View {
        Group {
            if let errorMessage = authViewModel.loginErrorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .padding(.bottom)
            }
        }
    }
    
    private var continueButton: some View {
        Button {
            Task { authViewModel.loginUser(username: username, password: password) }
        } label: {
            HStack {
                Text("Sign In")
                    .modifier(TextWithBackground(isDisabled: isValidUsername() && isValidPassword()))
            }
        }
        .disabled(!isValidUsername() || !isValidPassword())
    }
}

extension LoginView {
    func isValidUsername() -> Bool {
        return !username.isEmpty && username.count >= 5 && username.count <= 20
    }
    
    func isValidPassword() -> Bool {
        return !password.isEmpty && password.count >= 5 && username.count <= 20
    }
}
