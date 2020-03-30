//
//  ContentView.swift
//  breakapp
//
//  Created by alexander boswell on 2/16/20.
//  Copyright © 2020 alexander boswell. All rights reserved.
//

import SwiftUI
//
//struct ContentView: View {
//	@Environment(\.managedObjectContext) var moc
//	@FetchRequest(entity: Settings.entity(), sortDescriptors: []) var settings <
//	
//	@State var showingSettings = false
//	
//	var settingsButton: some View {
//		Button(action: { self.showingSettings.toggle() }, label: { Text("Settings") })
//	}
//	
//	var body: some View {
//		TabView {
//			HomeView().tabItem {
//				Image(systemName: "house.fill")
//				Text("Home")
//			}
//			SettingsView().environmentObject(UserData()).tabItem {
//				Image(systemName: "gear")
//					 Text("Settings")
//			}
//		}
//		NavigationView {
//			Text("Hello world")
//			.navigationBarItems(trailing: settingsButton)
//			.sheet(isPresented: $showingSettings) {
//				SettingsView().environmentObject(UserData())
//			}
//		}
//	}
//}
//
//struct ContentView_Previews: PreviewProvider {
//	static var previews: some View {
//		ContentView()
//	}
//}
