//
//  Settings.swift
//  breakapp
//
//  Created by alexander boswell on 2/16/20.
//  Copyright © 2020 alexander boswell. All rights reserved.
//

import Combine
import SwiftUI

final class Settings: ObservableObject {
	@Published var breakLength: Int = 17
	@Published var focusLength: Int = 52
	@Published var weekdays: [Weekday] = []
}


struct Weekday {
	var startTime: Date
	var endTime: Date
	var label: String
	var enabled: Bool
}
