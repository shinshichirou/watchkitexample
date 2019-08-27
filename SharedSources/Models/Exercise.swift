//
//  Exercise.swift
//  WatchTest
//
//  Created by Igor Tudoran on 8/27/19.
//  Copyright © 2019 DIGIS IOS. All rights reserved.
//

import Foundation

struct Exercise {
    var name: String
    var sets: [ExerciseSet]
    
    init(_ name: String, sets: [ExerciseSet]) {
        self.name = name
        self.sets = sets
    }
}
