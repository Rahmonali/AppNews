//
//  HelperFunctions.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import SwiftUI

struct HelperFunctions {
    
    static func changeBorderStroke(_ inputValue: String, _ isValid: Bool) -> Color {
        if inputValue.isEmpty {
            return Color.gray.opacity(0.7)
        } else {
            if isValid {
                return Color.green.opacity(0.6)
            } else {
                return Color.red.opacity(0.6)
            }
        }
    }
    
    static func formattedDateString(from dateString: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        guard let date = dateFormatter.date(from: dateString) else {
            return "Invalid Date"
        }
        
        let outputDateFormatter = DateFormatter()
        outputDateFormatter.dateFormat = "dd MMM, yyyy"
        
        return outputDateFormatter.string(from: date)
    }
}
