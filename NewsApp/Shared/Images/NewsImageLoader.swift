//
//  NewsImageLoader.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import SwiftUI

struct NewsImageLoader: View {
    
    @ObservedObject var imageLoader: ImageLoader
    
    init(url: String) {
        imageLoader = ImageLoader(url: url)
    }
    
    var body: some View {
        if let image = imageLoader.image {
            image
                .resizable()
                .scaledToFill()
        } else {
            Text("Loading")
        }
    }
}
