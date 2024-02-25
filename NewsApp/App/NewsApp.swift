//
//  NewsApp.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import SwiftUI

@main
struct NewsApp: App {
    
    @StateObject var articleBookmarkVM = ArticleBookmarkViewModel()
    
    var body: some Scene {
        WindowGroup {
            
            // Change the service
            // - NewsDataService
            // - MockNewsService
            ContentView(service: MockNewsService())
                .environmentObject(articleBookmarkVM)
        }
    }
}
