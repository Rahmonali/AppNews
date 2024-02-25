//
//  Article.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import Foundation

struct Article: Codable, Equatable, Identifiable, Hashable {
    
    var id = UUID()
    
    var author: String?
    var title: String
    var url: String
    var urlToImage: String?
    var publishedAt: String
    var description: String?
    
    enum CodingKeys: String, CodingKey {
        case author
        case title
        case url
        case urlToImage
        case publishedAt
        case description
    }
    
    var authorText: String {
        author ?? ""
    }
    
    var descriptionText: String {
        description ?? ""
    }
    
    var imageURL: String {
        guard let urlToImage = urlToImage else {
            return ""
        }
        return urlToImage
    }
}
