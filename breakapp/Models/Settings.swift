//
//  Settings.swift
//  breakapp
//
//  Created by alexander boswell on 2/16/20.
//  Copyright © 2020 alexander boswell. All rights reserved.
//

import Combine
import SwiftUI

struct Settings {
	var breakLength: Int
	var focusLength: Int
	var weekdays: [Weekday]
	
	static let `default` = Self(breakLength: 17, focusLength: 52, weekdays: [Weekday(startTime: Date(), endTime: Date(), label: "Monday", enabled: true),
	Weekday(startTime: Date(), endTime: Date(), label: "Tuesday", enabled: true),
	Weekday(startTime: Date(), endTime: Date(), label: "Wednesday", enabled: true),
	Weekday(startTime: Date(), endTime: Date(), label: "Thursday", enabled: true),
	Weekday(startTime: Date(), endTime: Date(), label: "Friday", enabled: true),
	Weekday(startTime: Date(), endTime: Date(), label: "Saturday", enabled: false),
	Weekday(startTime: Date(), endTime: Date(), label: "Sunday", enabled: false)])
	
	init(breakLength: Int, focusLength: Int, weekdays: [Weekday]) {
		self.breakLength = breakLength
		self.focusLength = focusLength
		self.weekdays = weekdays
	}
}


struct Weekday: Hashable {
	static func == (lhs: Weekday, rhs: Weekday) -> Bool {
		return lhs.label == rhs.label
	}
	
	func hash(into hasher: inout Hasher) {
		hasher.combine(label)
	}

	var startTime: Date
	var endTime: Date
	var label: String = ""
	var enabled: Bool
	
	static let `weekdaydefault` = Self(startTime: Date(), endTime: Date(), label: "Monday", enabled: true)
	
	init(startTime: Date, endTime: Date, label: String, enabled: Bool) {
		self.startTime = startTime
		self.endTime = endTime
		self.label = label
		self.enabled = enabled
	}
}
