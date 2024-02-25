//
//  PersonData+CoreDataProperties.swift
//  NewsApp
//
//  Created by Rahmonali on 25/02/24.
//
//

import Foundation
import CoreData


extension PersonData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PersonData> {
        return NSFetchRequest<PersonData>(entityName: "PersonData")
    }

    @NSManaged public var password: String?
    @NSManaged public var username: String?
    @NSManaged public var articles: NSSet?

}

// MARK: Generated accessors for articles
extension PersonData {

    @objc(addArticlesObject:)
    @NSManaged public func addToArticles(_ value: ArticlesData)

    @objc(removeArticlesObject:)
    @NSManaged public func removeFromArticles(_ value: ArticlesData)

    @objc(addArticles:)
    @NSManaged public func addToArticles(_ values: NSSet)

    @objc(removeArticles:)
    @NSManaged public func removeFromArticles(_ values: NSSet)

}

extension PersonData : Identifiable {

}
