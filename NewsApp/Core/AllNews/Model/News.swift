//
//  News.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import Foundation

struct News: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]?
}
