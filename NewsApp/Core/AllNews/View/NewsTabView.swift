//
//  NewsTabView.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import SwiftUI

struct NewsTabView: View {
    
    let articles: [Article]
        
    var body: some View {
        NavigationView {
            ArticleListView(articles: articles)
                .navigationTitle("News")
        }
    }
}
