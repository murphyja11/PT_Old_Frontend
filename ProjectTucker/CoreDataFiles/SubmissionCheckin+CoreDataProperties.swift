//
//  SubmissionCheckin+CoreDataProperties.swift
//  ProjectTucker
//
//  Created by Jack Murphy on 7/4/20.
//  Copyright © 2020 Jack Murphy. All rights reserved.
//
//

import Foundation
import CoreData
//import Combine


extension SubmissionCheckin {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SubmissionCheckin> {
        return NSFetchRequest<SubmissionCheckin>(entityName: "SubmissionCheckin")
    }

    @NSManaged public var mentalClarity: Float
    @NSManaged public var motivation: Float
    @NSManaged public var mood: Int16
    @NSManaged public var sleep: Float
    @NSManaged public var energy: Float
    @NSManaged public var soreness: Float
    @NSManaged public var date: Date?

}

extension SubmissionCheckin {
    static func getFetchRequest(_ predicate: NSPredicate) -> NSFetchRequest<SubmissionCheckin> {
        let request = NSFetchRequest<SubmissionCheckin>(entityName: "SubmissionCheckin")
        request.sortDescriptors = [NSSortDescriptor(key: "date", ascending: false)]
        request.predicate = predicate
        return request
    }
}
