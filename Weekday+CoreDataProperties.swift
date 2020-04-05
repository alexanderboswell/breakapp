//
//  Weekday+CoreDataProperties.swift
//  breakapp
//
//  Created by alexander boswell on 3/28/20.
//  Copyright © 2020 alexander boswell. All rights reserved.
//
//

import Foundation
import CoreData


extension Weekday {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Weekday> {
        return NSFetchRequest<Weekday>(entityName: "Weekday")
    }

    @NSManaged public var enabled: Bool
    @NSManaged public var endTime: Date?
    @NSManaged public var label: String?
    @NSManaged public var startTime: Date?
	@NSManaged public var sortNumber: Int
	
	public var wrappedEndTime: Date {
		var components = DateComponents()
		components.hour = 8
		components.minute = 0
		let date = Calendar.current.date(from: components) ?? Date()
		return endTime ?? date
	}

	public var wrappedLabel: String {
		return label ?? "Unknown weekday"
	}
	
	public var wrappedStartTime: Date {
		var components = DateComponents()
		components.hour = 17
		components.minute = 0
		let date = Calendar.current.date(from: components) ?? Date()
		return startTime ?? date
	}

}
