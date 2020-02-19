//
//  ContentView.swift
//  breakapp
//
//  Created by alexander boswell on 2/16/20.
//  Copyright © 2020 alexander boswell. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	
	@State var showingSettings = false
	
	var settingsButton: some View {
		Button(action: { self.showingSettings.toggle() }, label: { Text("Settings") })
	}
	
	var body: some View {
		NavigationView {
			Text("Hello world")
			.navigationBarTitle(Text("Featured"))
			.navigationBarItems(trailing: settingsButton)
			.sheet(isPresented: $showingSettings) {
				SettingsView().environmentObject(Settings())
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
