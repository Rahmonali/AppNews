//
//  HelperFunctions.swift
//  NewsApp
//
//  Created by Rahmonali on 24/02/24.
//

import Foundation

struct HelperFunctions {
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
