//
//  NewsTabView.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import SwiftUI

struct NewsTabView: View {
    
    let articles: [Article]
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        NavigationView {
            ArticleListView(articles: articles)
                .navigationTitle("News")
                .toolbar {
                    ToolbarItem {
                        Button {
                            authViewModel.logoutUser()
                        } label: {
                            Image(systemName: "rectangle.portrait.and.arrow.right")
                                .font(.headline.bold())
                        }
                    }
                }
                .tint(.black)
        }
    }
}
