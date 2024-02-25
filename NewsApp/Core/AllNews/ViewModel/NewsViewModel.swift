//
//  NewsViewModel.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import Foundation

@MainActor
class NewsViewModel: ObservableObject {
    @Published var articles = [Article]()
    
    @Published var showAlert = false
    @Published var errorMessage: String?
    
    private let service: NewsServiceProtocol
    
    init(service: NewsServiceProtocol) {
        self.service = service
    }
    
    
    func fetchArticleAsync() async {
        do {
            let response = try await service.fetchArticle()
            
            if let result = response?.articles {
                self.articles = result
            }
        } catch {
            showAlert = true
            guard let error = error as? NewsAPIError else { return }
            self.errorMessage = error.customDescription
        }
    }
    
    func search(searchQuery: String) async {
                
        let searchQuery = searchQuery.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if searchQuery.isEmpty {
            return
        }
        do {
            let response = try await service.search(for: searchQuery)
            
            if let result = response?.articles {
                self.articles = result
            }
        } catch {
            showAlert = true
            guard let error = error as? NewsAPIError else { return }
            self.errorMessage = error.customDescription
        }
    }
}
