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
    
    static let APIKey = "82a114825acf46e0b075d280fcdd1cfa"
}
