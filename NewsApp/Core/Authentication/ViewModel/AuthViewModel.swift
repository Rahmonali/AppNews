//
//  AuthViewModel.swift
//  NewsApp
//
//  Created by Rahmonali on 25/02/24.
//

import CoreData
import SwiftUI

@MainActor
class AuthViewModel: ObservableObject {
    
    let managedObjectContext = PersistenceController.shared.container.viewContext
    
    @Published var loginErrorMessage: String?
    @Published var signupErrorMessage: String?
    @Published var isValidTextField = false
    
    @Published var isLoggedIn: Bool {
        didSet {
            UserDefaults.standard.set(isLoggedIn, forKey: "isLoggedIn")
        }
    }

    init() {
        self.isLoggedIn = UserDefaults.standard.bool(forKey: "isLoggedIn")
    }
    
    
    func loginUser(username: String, password: String) {
        do {
            try validateLogin(username, password)
            isLoggedIn = true // Set isLoggedIn to true upon successful login
            loginErrorMessage = nil // Clear any previous error message
        } catch AuthError.emptyFields {
            loginErrorMessage = "Please type your username and password."
        } catch AuthError.userNotFound {
            loginErrorMessage = "User not found. Please check your username."
        } catch AuthError.incorrectPassword {
            loginErrorMessage = "Incorrect password. Please try again."
        } catch {
            loginErrorMessage = error.localizedDescription
        }
    }
    
    func signupUser(fullname:String, username: String, password: String) throws {
        if try isUsernameUnique(username: username) {
            let newUser = PersonData(context: managedObjectContext)
            newUser.username = username
            newUser.password = password
            
            do {
                try managedObjectContext.save()
                isLoggedIn = true
                signupErrorMessage = nil
            } catch {
                signupErrorMessage = error.localizedDescription
            }
        } else {
            signupErrorMessage = "Username already exists"
        }
    }
    
    func validateLogin(_ username: String, _ password: String) throws {
        guard !username.isEmpty && !password.isEmpty else {
            throw AuthError.emptyFields
        }
        
        let fetchRequest: NSFetchRequest<PersonData> = PersonData.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "username == %@", username)
        
        let result = try managedObjectContext.fetch(fetchRequest)
        guard let user = result.first else {
            throw AuthError.userNotFound
        }
        
        guard user.password == password else {
            throw AuthError.incorrectPassword
        }
    }
    
    func isUsernameUnique(username: String) throws -> Bool {
        let fetchRequest: NSFetchRequest<PersonData> = PersonData.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "username == %@", username)
        
        let result = try managedObjectContext.fetch(fetchRequest)
        return result.isEmpty
    }
    
    func logoutUser()  {
        self.isLoggedIn = false
    }
}
