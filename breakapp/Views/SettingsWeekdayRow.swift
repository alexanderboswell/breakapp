//
//  SettingsWeekdayRow.swift
//  breakapp
//
//  Created by alexander boswell on 2/18/20.
//  Copyright © 2020 alexander boswell. All rights reserved.
//

import CoreData
import SwiftUI

struct SettingsWeekdayRow: View {
	var weekday: Weekday
	var isEditing: Bool
	@State var isOn: Bool = true
	
    var body: some View {
		HStack {
			Text(self.weekday.wrappedLabel)
			Spacer()
			Text(getFormatedTimeRange(startTime: self.weekday.wrappedStartTime, endTime: self.weekday.wrappedEndTime))
//			if !isEditing {
//				EmptyView()
//			} else {
//				Toggle(isOn: $isOn, label: {
//					Text("test")
//				})
//			}
		}
    }
	
	func getFormatedTimeRange(startTime: Date, endTime: Date) -> String {
	
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "h:mm a"
		let startTimeString = dateFormatter.string(from: startTime)
		let endTimeString = dateFormatter.string(from: endTime)
		
		return("\(startTimeString) - \(endTimeString) ")
	}
}

struct SettingsWeekdayRow_Previews: PreviewProvider {
	static let moc = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
	
	static var previews: some View {
		let weekday = Weekday(context: moc)
		weekday.enabled = true
		weekday.label = "Monday"
		weekday.startTime = Date()
		weekday.endTime = Date()
		return SettingsWeekdayRow(weekday: weekday, isEditing: false).previewLayout(.fixed(width: 300, height: 70))
    }
}
