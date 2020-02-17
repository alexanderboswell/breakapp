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
        Button(action: { self.showingSettings.toggle() }) {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .accessibility(label: Text("User Profile"))
                .padding()
        }
    }
	
    var body: some View {
		NavigationView {
			List {
				Text("Hello, World!")
			}
		}
		.navigationBarTitle(Text("Featured"))
		.navigationBarItems(trailing: settingsButton)
		.sheet(isPresented: $showingSettings) {
			Text("Hello worls")
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
