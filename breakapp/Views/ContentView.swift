//
//  ContentView.swift
//  breakapp
//
//  Created by alexander boswell on 2/16/20.
//  Copyright © 2020 alexander boswell. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	@Environment(\.managedObjectContext) var moc
	
	var body: some View {
		TabView {
			HomeView().tabItem {
				Image(systemName: "house.fill")
				Text("Home")
			}
			SettingsView().tabItem {
				Image(systemName: "gear")
				Text("Settings")
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
