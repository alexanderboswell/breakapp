//
//  UserData.swift
//  breakapp
//
//  Created by alexander boswell on 2/16/20.
//  Copyright © 2020 alexander boswell. All rights reserved.
//


import Combine
import SwiftUI

final class UserData: ObservableObject {
	@Published var showFavoritesOnly = false
}
