//
//  ArticlesData+CoreDataProperties.swift
//  NewsApp
//
//  Created by Rahmonali on 25/02/24.
//
//

import Foundation
import CoreData


extension ArticlesData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ArticlesData> {
        return NSFetchRequest<ArticlesData>(entityName: "ArticlesData")
    }

    @NSManaged public var author: String?
    @NSManaged public var descriptionText: String?
    @NSManaged public var id: UUID?
    @NSManaged public var publishedAt: String?
    @NSManaged public var title: String?
    @NSManaged public var urlToImage: String?
    @NSManaged public var member: NSSet?

}

// MARK: Generated accessors for member
extension ArticlesData {

    @objc(addMemberObject:)
    @NSManaged public func addToMember(_ value: PersonData)

    @objc(removeMemberObject:)
    @NSManaged public func removeFromMember(_ value: PersonData)

    @objc(addMember:)
    @NSManaged public func addToMember(_ values: NSSet)

    @objc(removeMember:)
    @NSManaged public func removeFromMember(_ values: NSSet)

}

extension ArticlesData : Identifiable {

}
