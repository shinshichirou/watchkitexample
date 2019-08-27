//
//  ExerciseSet.swift
//  WatchTest
//
//  Created by Igor Tudoran on 8/27/19.
//  Copyright © 2019 DIGIS IOS. All rights reserved.
//

import Foundation

struct ExerciseSet {
    var imageName: String
    var comment: String
    
    init(_ imageName: String, comment: String) {
        self.imageName = imageName
        self.comment = comment
    }
}
