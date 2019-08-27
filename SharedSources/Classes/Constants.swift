//
//  Constants.swift
//  WatchTest
//
//  Created by Igor Tudoran on 8/27/19.
//  Copyright © 2019 DIGIS IOS. All rights reserved.
//

import Foundation

// Typealiases

typealias Callback = () -> ()

// Enums

enum WatchInterfaceIdentifier {
    static let main = "main"
    static let exercisesList = "list"
    static let exerciseDetails = "details"
}

enum WatchContextKeys {
    static let exerciseCount = "kExerciseCount"
}

enum WatchRowControllers {
    static let exercisesRowController = "ExercisesRowController"
    static let exerciseRowController = "ExerciseRowController"
}
