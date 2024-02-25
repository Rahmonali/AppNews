//
//  NewsDataService.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import Foundation

protocol NewsServiceProtocol {
    func fetchArticle() async throws -> News?
    func search(for query: String) async throws -> News?
}

class NewsDataService: NewsServiceProtocol, HTTPDataDownloader {
    private var fetchLimit = 30
    
    func fetchArticle() async throws -> News? {
        guard let endPoint = allArticlesURLString else {
            throw NewsAPIError.requestFailed(description: "Invalid Endpoint")
        }
        
        return try await fetchData(as: News.self, endPoint: endPoint)
    }
    
    func search(for query: String) async throws -> News? {        
        guard let endPoint = generateSearchURL(from: query) else {
            throw NewsAPIError.requestFailed(description: "Invalid Endpoint")
        }
        
        return try await fetchData(as: News.self, endPoint: endPoint)
    }
    
    
    private var baseUrlComponents: URLComponents {
        var components = URLComponents()
        components.scheme = Constants.AppConfigAPI.scheme
        components.host = Constants.AppConfigAPI.host
        components.path = Constants.AppConfigAPI.path
        
        return components
    }
    
    private var allArticlesURLString: String? {
        var components = baseUrlComponents
        components.path += "top-headlines"
        
        components.queryItems = [
            .init(name: "country", value: "us"),
            .init(name: "pageSize", value: "\(fetchLimit)"),
            .init(name: "page", value: "1"),
            .init(name: "apiKey", value: Constants.APIKey)
        ]
        
        return components.url?.absoluteString
    }
    
    private func generateSearchURL(from query: String) -> String? {
                
        var components = baseUrlComponents
        components.path += "top-headlines"
        
        components.queryItems = [
            .init(name: "q", value: "\(query.trimmed())"),
            .init(name: "country", value: "us"),
            .init(name: "pageSize", value: "\(fetchLimit)"),
            .init(name: "page", value: "1"),
            .init(name: "apiKey", value: Constants.APIKey)
        ]
        
        return components.url?.absoluteString
    }
}

