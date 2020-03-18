//
//  SettingsView.swift
//  breakapp
//
//  Created by alexander boswell on 2/16/20.
//  Copyright © 2020 alexander boswell. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
	@EnvironmentObject var userData: UserData
	
	@State var editing = false
	@State var selectedWeekday: Weekday = UserData().settings.weekdays.first!
	@State private var showModal: Bool = false
	
	var body: some View {
		NavigationView {
			List {
				Section {
					Text("hello world")
					Text("hello world")
				}
				Section {
					ForEach(self.userData.settings.weekdays, id: \.self) { weekday in
						Button(action: {
							self.showModal.toggle()
							self.selectedWeekday = weekday
						}, label: {
						SettingsWeekdayRow(weekday: weekday, isEditing: self.editing)
						}).foregroundColor(.primary)
					}
				}
			}.listStyle(GroupedListStyle())
				.navigationBarItems(
					trailing: self.editing ?
						AnyView(Button(action: {
							self.editing = false
						}, label: { Text("Done") }))
						:
						AnyView(Button(action: {
							self.editing = true
						}, label: { Text("Edit") }))
			).sheet(isPresented: $showModal) {
				WeekdayEditView(weekday: self.selectedWeekday)
			}
				.navigationBarTitle("Settings")
		}
	}
}

struct SettingsView_Previews: PreviewProvider {
	static var previews: some View {
		SettingsView().environmentObject(UserData())
	}
}
