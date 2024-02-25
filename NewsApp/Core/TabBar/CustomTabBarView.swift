//
//  CustomTabBarView.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import SwiftUI

struct CustomTabBarView: View {
    
    @Binding var selectedTab: Tabs
    
    var body: some View {
        HStack(alignment: .top) {
            Button {
                selectedTab = .home
            } label: {
                TabBarButtonView(buttonText: "Top Headlines", imageName: "globe")
                    .foregroundStyle(selectedTab == .home ? .indigo : .gray)
            }
            
            Button {
                selectedTab = .saved
            } label: {
                TabBarButtonView(buttonText: "Saved News", imageName: "bookmark.fill")
                    .foregroundStyle(selectedTab == .saved ? .indigo : .gray)
            }
        }
        .background(
            GeometryReader { geo in
                Path({ path in
                    path.move(to: CGPoint(x: 0, y: 0))
                    path.addLine(to: CGPoint(x: geo.size.width, y: 0))
                })
                .stroke(.gray.opacity(0.4))
            }
        )
        .frame(height: 75)
    }
}

#Preview {
    CustomTabBarView(selectedTab: .constant(.home))
}
