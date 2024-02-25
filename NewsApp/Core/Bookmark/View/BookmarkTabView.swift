//
//  BookmarkView.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import SwiftUI

struct BookmarkTabView: View {
    
    @EnvironmentObject var articleBookmarkVM: ArticleBookmarkViewModel
    @State private var searchText: String = ""
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        let articles = self.articles
        
        NavigationView {
            ArticleListView(articles: articles)
                .overlay(overlayView(isEmpty: articles.isEmpty))
                .navigationTitle("Saved Articles")
                .toolbar {
                    ToolbarItem {
                        Button {
                            authViewModel.logoutUser()
                        } label: {
                            Image(systemName: "rectangle.portrait.and.arrow.right")
                                .font(.headline.bold())
                        }
                        .tint(.black)
                    }
                }
        }
        .searchable(text: $searchText)
    }
    
    private var articles: [Article] {
        if searchText.isEmpty {
            return articleBookmarkVM.bookmarks
        }
        
        return articleBookmarkVM.bookmarks
            .filter {
                $0.title.lowercased().contains(searchText.lowercased()) ||
                $0.descriptionText.lowercased().contains(searchText.lowercased())
            }
    }
    
    @ViewBuilder
    func overlayView(isEmpty: Bool) -> some View {
        if isEmpty {
            EmptyPlaceholderView(text: "No Saved Articles", image: Image(systemName: "bookmark"))
        }
    }
}

#Preview {
    BookmarkTabView()
}
