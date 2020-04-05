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
				.trim(from: progress > 0.99 ? 0.0 : 0.025 , to: progress > 0.99 ? progress : progress - 0.025)
				  .stroke(
					  AngularGradient(
						gradient: Gradient(colors: [Color.black]),
						  center: .center,
						  startAngle: .degrees(360),
						  endAngle: .degrees(0)
					  ),
					  style: StrokeStyle(lineWidth: 25, lineCap: .round)
			  ).rotationEffect(.degrees(-90))
				.shadow(color: Color.black.opacity(0.5), radius: 3, x: 4, y: 0)
				.frame(width: 315, height: 315, alignment: .center)
			.aspectRatio(contentMode: .fit)

			Image("timerBackground")
			.frame(width: 340, height: 340, alignment: .center)
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
				style: StrokeStyle(lineWidth: 26, lineCap: .square)
			).rotationEffect(.degrees(-90))
			.frame(width: 315, height: 315, alignment: .center)

		
			Text("Test").font(.headline)
		}
    }
}

struct TimerView_Previews: PreviewProvider {
	static var previews: some View {
		TimerView(progress: .constant((1)))
	}
}

extension Color {
    public static var outlineRed: Color {
        return Color(decimalRed: 34, green: 0, blue: 3)
    }
    
    public static var darkRed: Color {
        return Color(decimalRed: 221, green: 31, blue: 59)
    }
    
    public static var lightRed: Color {
        return Color(decimalRed: 239, green: 54, blue: 128)
    }
    
    public init(decimalRed red: Double, green: Double, blue: Double) {
        self.init(red: red / 255, green: green / 255, blue: blue / 255)
    }
}
