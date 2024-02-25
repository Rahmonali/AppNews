//
//  TabBarButtonView.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import SwiftUI

struct TabBarButtonView: View {
    
    var buttonText: String
    var imageName: String
    
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .center, spacing: 4) {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                
                Text(buttonText)
                    .font(.caption)
                    .fontWeight(.bold)
            }
            .padding(.top, 15)
            .padding(.bottom, 30)
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

#Preview {
    TabBarButtonView(buttonText: "home", imageName: "globe")
}
