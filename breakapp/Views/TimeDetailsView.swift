//
//  TimeDetailsView.swift
//  breakapp
//
//  Created by alexander boswell on 4/6/20.
//  Copyright © 2020 alexander boswell. All rights reserved.
//

import SwiftUI

struct TimeDetailsView: View {
	var color: Color
	var imageName: String
	var title: String
	
    var body: some View {
		VStack {
			HStack {
				Image(imageName)
				.resizable()
				.frame(width: 30, height: 30)
				Text(title)
					.font(.system(size: 16))
					.foregroundColor(color)
			}
			Text("8:10 AM").font(.title)
		}
    }
}

struct TimeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
		TimeDetailsView(color: Color.megaMan, imageName: "startTimeClock", title: "Start Time")
    }
}
