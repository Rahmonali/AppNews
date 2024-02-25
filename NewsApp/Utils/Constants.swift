//
//  Constants.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import Foundation

struct Constants {
    static let baseURL = "\(AppConfigAPI.scheme)://\(AppConfigAPI.host)"
        
    enum AppConfigAPI {
        static let scheme = "https"
        static let host = "newsapi.org"
        static let path = "/v2/"
    }
    
    static let APIKey = "f7dc26336ac548cf85354970c6dea4ac"
}
