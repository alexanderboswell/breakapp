//
//  Extensions.swift
//  breakapp
//
//  Created by alexander boswell on 3/29/20.
//  Copyright © 2020 alexander boswell. All rights reserved.
//

import Foundation

extension UserDefaults {
	
	var breakAmount: Int {
		get {
			let defaults = self
			let value = defaults.integer(forKey: "breakAmount")
	
			// set a default value if not set
			if value == 0 {
				let breakAmount = 17
				UserDefaults.standard.set(breakAmount, forKey: "breakAmount")
				return breakAmount
			}
			
			return value
		}
		set(newValue) {
			UserDefaults.standard.set(newValue, forKey: "breakAmount")
		}
	}

	var focusTime: Int {
		get {
			let defaults = self
			let value = defaults.integer(forKey: "focusTime")
	
			// set a default value if not set
			if value == 0 {
				let focusTime = 52
				UserDefaults.standard.set(focusTime, forKey: "focusTime")
				return focusTime
			}
			
			return value
		}
		set(newValue) {
			UserDefaults.standard.set(newValue, forKey: "focusTime")
		}
	}
	
	var firstRun: Bool {
		get {
			let defaults = self
			let value = defaults.bool(forKey: "appHasBeenOpened")
			if value == false {
				UserDefaults.standard.set(true, forKey: "appHasBeenOpened")
				return value
			}
			
			return value
		}
	}
}


struct Constants {
	struct CoreData {
		static let weekdays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
		
		struct Attributes {
			static let sortNumber = "sortNumber"
			static let label = "label"
			static let enabled = "enabled"
			static let endTime = "endTime"
			static let startTime = "startTime"
		}
		
		struct Entities {
			static let weekday = "Weekday"
		}
	}
}
