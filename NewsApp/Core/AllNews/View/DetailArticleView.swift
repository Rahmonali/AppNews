//
//  DetailArticleView.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import SwiftUI

struct DetailArticleView: View {
    
    @EnvironmentObject var articleBookmarkVM: ArticleBookmarkViewModel
    @Environment(\.dismiss) var dismiss
    let article: Article
    
    var body: some View {
        ScrollView {
            GeometryReader { geo in
                VStack {
                    ZStack {
                        NewsImageLoader(url: article.imageURL)
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Image(systemName: articleBookmarkVM.isBookmarked(for: article) ? "bookmark.fill" : "bookmark")
                                    .font(.title2)
                                    .onTapGesture {
                                        toggleBookmark(for: article)
                                    }
                                
                                Spacer()
                                
                                Button {
                                    dismiss()
                                } label: {
                                    Image(systemName: "xmark")
                                        .font(.title2.bold())
                                }
                            }
                            .padding(.vertical)
                            
                            Spacer()
                            
                            Text(article.title)
                                .font(.title)
                                .fontWeight(.bold)
                                .lineLimit(3)
                                .padding(.vertical)
                            
                            HStack {
                                Spacer()
                                HStack {
                                    Image(systemName: "calendar")
                                    Text(HelperFunctions.formattedDateString(from: article.publishedAt))
                                }
                            }
                            .font(.callout)
                            .padding(.bottom, 5)
                        }
                        .padding()
                    }
                    .foregroundStyle(.white)
                    .frame(width: geo.size.width)
                    
                    
                    VStack(alignment: .leading) {
                        HStack {
                            if let author = article.author {
                                Text(author)
                                    .fontWeight(.bold)
                            }
                            
                            Spacer()
                            
                            Image(systemName: "newspaper")
                        }
                        .padding(.vertical)
                        
                        if let description = article.description {
                            Text(description)
                        } else {
                            Text("This post does not have a description")
                        }
                        
                        
                    }
                    .font(.body)
                    .padding(.horizontal)
                }
                .padding(.bottom)
            }
        }
        .ignoresSafeArea(edges: .top)
        .statusBar(hidden: true)
    }
    
    private func toggleBookmark(for article: Article) {
        if articleBookmarkVM.isBookmarked(for: article) {
            articleBookmarkVM.removeBookmark(for: article)
        } else {
            articleBookmarkVM.addBookMark(for: article)
        }
    }
}

