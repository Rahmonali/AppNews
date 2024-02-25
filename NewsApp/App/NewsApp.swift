//
//  NewsApp.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import SwiftUI

@main
struct NewsApp: App {
    let persistenceController = PersistenceController.shared
    
    @StateObject var articleBookmarkVM = ArticleBookmarkViewModel()
    @StateObject var authViewModel = AuthViewModel()
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(articleBookmarkVM)
                .environmentObject(authViewModel)
                .preferredColorScheme(.light)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
