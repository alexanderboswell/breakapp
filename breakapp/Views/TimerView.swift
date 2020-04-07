//
//  TimerView.swift
//  breakapp
//
//  Created by alexander boswell on 4/4/20.
//  Copyright © 2020 alexander boswell. All rights reserved.
//

import SwiftUI

struct TimerView: View {
    @Binding var progress: CGFloat
    var body: some View {
        ZStack {
			Circle()
				.trim(from: progress > 0.99999 ? 0.0 : 0.025 , to: progress > 0.99999 ? progress : progress - 0.025)
				  .stroke(
					  AngularGradient(
						gradient: Gradient(colors: [Color.black]),
						  center: .center,
						  startAngle: .degrees(360),
						  endAngle: .degrees(0)
					  ),
					  style: StrokeStyle(lineWidth: 25, lineCap: .round)
			  ).rotationEffect(.degrees(-90))
				.shadow(color: Color.black.opacity(0.75), radius: 5, x: 0, y: 0)
				.frame(minWidth: 240, idealWidth: 240, maxWidth: 315, minHeight: 240, idealHeight: 240, maxHeight: 315,alignment: .center)
//				.frame(width: 315, height: 315, alignment: .center)
			.aspectRatio(contentMode: .fit)

			Image("timerBackground")
			.resizable()
				.frame(minWidth: 240, idealWidth: 265, maxWidth: 340, minHeight: 240, idealHeight: 265, maxHeight: 340,alignment: .center)
			.clipShape(Circle())

		Circle()
			.fill(Color.white)
			.frame(width: 290, height: 290, alignment: .center)
		Circle()
			.trim(from: progress, to: 1)
			.stroke(
				AngularGradient(
					gradient: Gradient(colors: [Color.white]),
					center: .center,
					startAngle: .degrees(0),
					endAngle: .degrees(0)
				),
				style: StrokeStyle(lineWidth: 28, lineCap: .square)
			).rotationEffect(.degrees(-90))
				.frame(minWidth: 240, idealWidth: 240, maxWidth: 315, minHeight: 240, idealHeight: 240, maxHeight: 315,alignment: .center)
			
			Text("32").font(.system(size: 108))
			HStack {
				Spacer()
				Spacer()
				Spacer()
				Spacer()
				Text("mins").font(.title)
				Spacer()
				
			}
		}
	}
}

struct TimerView_Previews: PreviewProvider {
	static var previews: some View {
		TimerView(progress: .constant((0.6)))
	}
}
