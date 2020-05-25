//
//  Hike.swift
//  Landmarks
//
//  Created by Joshua Balloch on 5/23/20.
//  Copyright © 2020 Thimble. All rights reserved.
//

import SwiftUI

struct Hike: Codable, Hashable, Identifiable {
    var name: String
    var id: Int
    var distance: Double
    var difficulty: Int
    var observations: [Observation]

    static var formatter = LengthFormatter()

    var distanceText: String {
        return Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }

    struct Observation: Codable, Hashable {
        var distanceFromStart: Double

        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }
}
