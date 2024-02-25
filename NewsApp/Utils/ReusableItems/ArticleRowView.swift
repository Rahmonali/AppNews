//
//  ArticleRowView.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import SwiftUI

struct ArticleRowView: View {
    
    @EnvironmentObject var articleBookmarkVM: ArticleBookmarkViewModel
    
    let article: Article
    
    var body: some View {
        HStack(spacing: 16) {
            NewsImageLoader(url: article.imageURL)
                .frame(width: 100, height: 100)
                .clipShape(.rect(cornerRadius: 25))
            
            VStack(alignment: .leading, spacing: 10){
                if let author = article.author {
                    Text(author)
                        .font(.footnote)
                        .foregroundStyle(.gray)
                }
                
                Text(article.title)
                    .font(.callout)
                    .fontWeight(.medium)
                    .lineLimit(2)
                
                HStack {
                    Text(HelperFunctions.formattedDateString(from: article.publishedAt))
                        .font(.footnote)
                        .foregroundStyle(.gray)
                    
                    Spacer()
                    
                    Image(systemName: articleBookmarkVM.isBookmarked(for: article) ? "bookmark.fill" : "bookmark")
                        .font(.title2)
                        .onTapGesture {
                            toggleBookmark(for: article)
                        }
                }
            }
            .padding(.top)
        }
    }
    
    private func toggleBookmark(for article: Article) {
        if articleBookmarkVM.isBookmarked(for: article) {
            articleBookmarkVM.removeBookmark(for: article)
        } else {
            articleBookmarkVM.addBookMark(for: article)
        }
    }
}


//struct ArticleRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        @StateObject var mockArticleVm = NewsViewModel(service: MockNewsService())
//        
//        ArticleRowView(article: mockArticleVm.articles[1])
//            .environmentObject(ArticleBookmarkViewModel())
//    }
//}
