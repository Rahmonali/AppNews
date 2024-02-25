//
//  ContentView.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab: Tabs = .home
    
    private let service: NewsServiceProtocol
    @StateObject var vm: NewsViewModel
    
    @State private var searchQuery = ""
    
    init(service: NewsServiceProtocol) {
        self.service = service
        self._vm = StateObject(wrappedValue: NewsViewModel(service: service))
    }
    
    var body: some View {
        VStack(spacing: 0) {
            switch(selectedTab) {
                case .home:
                    NewsTabView(articles: vm.articles)
                case .saved:
                    BookmarkTabView()
            }
            Spacer()
                .frame(height: 0)
            CustomTabBarView(selectedTab: $selectedTab)
        }
        .ignoresSafeArea(edges: .bottom)
        .searchable(text: $searchQuery)
        .task {
            await vm.fetchArticleAsync()
        }
        .onChange(of: searchQuery) { newValue in
            Task {
                if newValue.isEmpty {
                    await vm.fetchArticleAsync()
                } else {
                    
                    if newValue.count > 3 {
                        await vm.search(searchQuery: newValue)
                    }
                }
            }
        }
        .alert(
            Text(vm.errorMessage ?? "Something went wrong"),
            isPresented: $vm.showAlert) {
                Button("OK") {}
            }
    }
}

#Preview {
    ContentView(service: MockNewsService())
}
