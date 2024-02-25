//
//  ArticleBookmarkViewModel.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import Foundation

class ArticleBookmarkViewModel: ObservableObject {
    
    @Published var bookmarks = [Article]()
    
    func isBookmarked(for article: Article) -> Bool {
        bookmarks.first { article.id == $0.id } != nil
    }
    
    func addBookMark(for article: Article) {
        guard !isBookmarked(for: article) else {
            return
        }
        
        bookmarks.insert(article, at: 0)
    }
    
    func removeBookmark(for article: Article) {
        guard let index = bookmarks.firstIndex(where:  { $0.id == article.id }) else {
            return
        }
        
        bookmarks.remove(at: index)
    }
}
