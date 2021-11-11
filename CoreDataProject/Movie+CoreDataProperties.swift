//
//  Movie+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Василий Буланов on 11/11/21.
//
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie")
    }

    @NSManaged public var title: String?
    @NSManaged public var director: String?
    @NSManaged public var yeat: Int16
    
    public var wrappedTitle: String {
        title ?? "Unknown Title"
    }
    
    public var wrappedDirector: String {
        director ?? "Unknown Director"
    }

}

extension Movie : Identifiable {

}
