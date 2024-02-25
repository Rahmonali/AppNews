//
//  RootView.swift
//  NewsApp
//
//  Created by Rahmonali on 25/02/24.
//

import SwiftUI

struct RootView: View {
    
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        if authViewModel.isLoggedIn {
            // Change the service
            // - NewsDataService
            // - MockNewsService
            ContentView(service: NewsDataService())
        } else {
            LoginView()
        }
    }
}

#Preview {
    RootView()
        .environmentObject(AuthViewModel())
}
