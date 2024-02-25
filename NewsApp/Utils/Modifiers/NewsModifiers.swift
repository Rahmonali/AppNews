//
//  NewsModifiers.swift
//  NewsApp
//
//  Created by Rahmonali on 25/02/24.
//

import SwiftUI

struct IntiqolTextModifier: ViewModifier {
    
    let borderColor: Color
    
    init(borderColor: Color = Color.gray.opacity(0.5)) {
        self.borderColor = borderColor
    }
    
    func body(content: Content) -> some View {
        content
            .font(Font.title3.bold())
            .padding(.horizontal)
            .padding(.vertical, 12)
            .background(.white)
            .clipShape(.rect(cornerRadius: 10))
            .overlay {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .stroke(borderColor)
            }
    }
}

struct TextWithBackground: ViewModifier {
    
    let isDisabled: Bool
    
    init(isDisabled: Bool = false) {
        self.isDisabled = isDisabled
    }
    
    func body(content: Content) -> some View {
        content
            .font(Font.title3.bold())
            .padding(.horizontal)
            .padding(.vertical, 15)
            .frame(maxWidth: .infinity)
            .foregroundColor(isDisabled ? .white : Color.black.opacity(0.6))
            .background(isDisabled ? Color.green.opacity(0.7) : Color.gray.opacity(0.3))
            .clipShape(.rect(cornerRadius: 10))
    }
}
