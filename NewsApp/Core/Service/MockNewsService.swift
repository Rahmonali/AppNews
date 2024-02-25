//
//  MockNewsService.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import Foundation

class MockNewsService: NewsServiceProtocol {
    
    var mockData: Data?
    var mockError: NewsAPIError?
    
    func fetchArticle() async throws -> News? {
        
        if let mockError { throw mockError }
        
        do {
            let articles = try JSONDecoder().decode(News.self, from: mockNewsData)
            return articles
        } catch {
            print("DEBUG: Error. \(error.localizedDescription)")
            throw error as? NewsAPIError ?? .unknownError(error: error)
        }
    }
    
    func search(for query: String) async throws -> News? {
        let article = Article(
            author: "Kevin Liptak, Michael Williams",
            title: "Biden meets with Navalny family in California, pledges sanctions against Putin - CNN",
            url: "https://www.cnn.com/2024/02/22/politics/biden-meets-with-navalny-family-in-california/index.html",
            urlToImage: "https://media.cnn.com/api/v1/images/stellar/prod/gg9zdbnwoaahn-q.jpg?c=16x9&q=w_800,c_fill", 
            publishedAt: "2024-02-23T09:51:00Z",
            description: "President Joe Biden met Thursday with the wife and daughter of the late Russian opposition leader Alexey Navalny, the White House said, as the president prepares to levy additional sanctions against Russia.")
        let newsDetail = News(status: "ok", totalResults: 1, articles: [article])
        return newsDetail
    }
}
