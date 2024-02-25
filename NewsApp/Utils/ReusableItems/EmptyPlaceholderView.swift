//
//  EmptyPlaceholderView.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import SwiftUI

struct EmptyPlaceholderView: View {
    
    let text: String
    let image: Image?
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            if let image = self.image {
                image.font(.title)
            }
            Text(text)
        }
    }
}

#Preview {
    EmptyPlaceholderView(text: "No Bookmarks", image: Image(systemName: "bookmark"))
}
