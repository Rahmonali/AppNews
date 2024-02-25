//
//  NewsAPIError.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import Foundation

enum NewsAPIError: Error {
    case InvalidData
    case jsonParsingFailure
    case requestFailed(description: String)
    case invalidStatusCode(statusCode: Int)
    case unknownError(error: Error)
    
    var customDescription: String {
        switch self {
            case .InvalidData:
                return "Invalid Data"
            case .jsonParsingFailure:
                return "Failed to parse JSON"
            case .requestFailed(let description):
                return "Request failed: \(description)"
            case .invalidStatusCode(let statusCode):
                return "Invalid status code: \(statusCode)"
            case .unknownError(let error):
                return "An unknown error occured \(error.localizedDescription)"
        }
    }
}
