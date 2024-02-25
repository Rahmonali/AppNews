//
//  ArticleListView.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import SwiftUI

struct ArticleListView: View {
    
    let articles: [Article]
    
    @State private var isShowingFullCover = false
    @State private var selectedArticle: Article?
    
    var body: some View {
        List {
            ForEach(articles) { article in
                ArticleRowView(article: article)
                    .onTapGesture(perform: {
                        selectedArticle = article
                        isShowingFullCover = true
                        
                    })
            }
        }
        .onChange(of: isShowingFullCover) { newValue in
            if !newValue { 
                selectedArticle = nil
            }
        }
        .fullScreenCover(isPresented: $isShowingFullCover, content: {
            if let article = selectedArticle {
                DetailArticleView(article: article)
            }
        })
    }
}
