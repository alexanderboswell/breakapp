//
//  SettingsView.swift
//  breakapp
//
//  Created by alexander boswell on 2/16/20.
//  Copyright © 2020 alexander boswell. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
	@EnvironmentObject var settings: Settings
	
	@State var editing = false
	
	var body: some View {
		NavigationView {
			List {
				Section {
					Text("hello world")
					Text("hello world")
				}
				Section {
					SettingsWeekdayRow()
					SettingsWeekdayRow()
					SettingsWeekdayRow()
				}
			}.listStyle(GroupedListStyle())
				.navigationBarItems(
					leading: self.editing ?
						AnyView(Button(action: {
							// Actions
							self.editing = false
						}, label: { Text("Cancel") }))
						:
						AnyView(EmptyView()),
					
					
					trailing: self.editing ?
						AnyView(Button(action: {
							self.editing = false
						}, label: { Text("Done") }))
						:
						AnyView(Button(action: {
							self.editing = true
						}, label: { Text("Edit") }))
			)
				.navigationBarTitle("Settings")
		}
	}
}

struct SettingsView_Previews: PreviewProvider {
	static var previews: some View {
		SettingsView().environmentObject(Settings())
	}
}
