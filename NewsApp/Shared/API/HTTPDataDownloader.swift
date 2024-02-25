//
//  HTTPDataDownloader.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import Foundation

protocol HTTPDataDownloader {
    func fetchData<T: Decodable>(as type: T.Type, endPoint: String) async throws -> T
}

extension HTTPDataDownloader {
    func fetchData<T: Decodable>(as type: T.Type, endPoint: String) async throws -> T {
        
        guard let url = URL(string: endPoint) else {
            throw NewsAPIError.requestFailed(description: "Invalid URL")
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse else {
            throw NewsAPIError.requestFailed(description: "Request Failed")
        }
        
        guard httpResponse.statusCode == 200 else {
            throw NewsAPIError.invalidStatusCode(statusCode: httpResponse.statusCode)
        }
        
        do {
            return try JSONDecoder().decode(type, from: data)
        } catch {
            print("DEBUG: Error: \(error)")
            throw error as? NewsAPIError ?? .unknownError(error: error)
        }
    }
}
