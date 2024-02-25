//
//  AuthError.swift
//  NewsApp
//
//  Created by Rahmonali on 25/02/24.
//

import Foundation

enum AuthError: Error {
    case usernameExists
    case userNotFound
    case incorrectPassword
    case emptyFields
}
