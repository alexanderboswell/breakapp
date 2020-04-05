//
//  WeekdayEditView.swift
//  breakapp
//
//  Created by alexander boswell on 3/9/20.
//  Copyright © 2020 alexander boswell. All rights reserved.
//

import SwiftUI

struct WeekdayEditView: View {
	
	let weekdayLabel: String
	@State private var startTime = Date().addingTimeInterval(32400)
	@State private var endTime = Date().addingTimeInterval(32400 * 2)
	
    var body: some View {
		NavigationView {
			VStack {
				Text("Start Time").bold()
				DatePicker("Start Time", selection: $startTime, in: ...endTime, displayedComponents: [.hourAndMinute])
				.labelsHidden()
				Text("End Time").bold()
				DatePicker("End Time", selection: $endTime, in: startTime..., displayedComponents: [.hourAndMinute])
				.labelsHidden()
				Spacer()
				}
//			.navigationBarTitle(Text(self.weekday.wrappedLabel), displayMode: .inline)
			.navigationBarItems(
				leading: AnyView(Button(action: {
					
				}, label: { Text("Cancel") })),
			trailing:
				AnyView(Button(action: {
					
				}, label: { Text("Save") }))
			)
				.padding()
		}
    }
}

//struct WeekdayEditView_Previews: PreviewProvider {
//    static var previews: some View {
//		WeekdayEditView(weekday: UserData().settings.weekdays[0])
//    }
//}
