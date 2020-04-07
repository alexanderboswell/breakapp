//
//  HomeView.swift
//  breakapp
//
//  Created by alexander boswell on 3/9/20.
//  Copyright © 2020 alexander boswell. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
		VStack {
			TimerView(progress: .constant(0.85))
				.padding(.leading)
				.padding(.trailing)
				.padding(.top)
			Text("Monday").font(.title).bold()
			
			HStack {
				TimeDetailsView(color: .megaMan, imageName: "startTimeClock", title: "Start Time").padding(.leading)
				Spacer()
				TimeDetailsView(color: .spiroDiscoBall, imageName: "endTimeClock", title: "End Time").padding(.trailing)
			}
			
			Spacer()
		}
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
