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
	
    var body: some View {
		NavigationView {
			List {
				Toggle(isOn: $settings.showFavoritesOnly) {
					Text("Show Favorites Only")
				}
			}
		}.navigationBarTitle(Text("Settings"))
	
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
		SettingsView().environmentObject(Settings())
    }
}
