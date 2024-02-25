//
//  String+Extensions.swift
//  NewsApp
//
//  Created by Rahmonali on 25/02/24.
//

import Foundation

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
