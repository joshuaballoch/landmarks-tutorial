//
//  UserData.swift
//  Landmarks
//
//  Created by Joshua Balloch on 5/21/20.
//  Copyright © 2020 Thimble. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
