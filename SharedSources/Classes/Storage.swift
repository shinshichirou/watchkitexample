//
//  Storage.swift
//  WatchTest
//
//  Created by Igor Tudoran on 8/27/19.
//  Copyright © 2019 DIGIS IOS. All rights reserved.
//

import Foundation

class Storage {
    
    static private let exericices = [
        Exercise("First exercise", sets: [Sets.first]),
        Exercise("Second exercise", sets: [Sets.second]),
        Exercise("Third exercise", sets: [Sets.third]),
        Exercise("Fourth exercise", sets: [Sets.fourthA, Sets.fourthB]),
        Exercise("Fifth exercise", sets: [Sets.fifthA, Sets.fourthB]),
        Exercise("Sixth exercise", sets: [Sets.sixthA, Sets.sixthB, Sets.sixthC])
    ]
    
    class func generateContentWith(_ count: Int) -> [Exercise] {
        var randomExercises = [Exercise]()
        for _ in 1...count {
            guard let randomElement = exericices.randomElement() else {
                return randomExercises
            }
            randomExercises.append(randomElement)
        }
        return randomExercises
    }
    
}

// Testing data

private enum Sets {
    static let first   = ExerciseSet("e1",
                                   comment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.")
    static let second  = ExerciseSet("e2",
                                    comment: "Ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
    static let third   = ExerciseSet("e3",
                                    comment: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")
    static let fourthA = ExerciseSet("e4a",
                                    comment: "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
    static let fourthB = ExerciseSet("e4b",
                                    comment: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.")
    static let fifthA  = ExerciseSet("e5a",
                                    comment: "Totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.")
    static let fifthB  = ExerciseSet("e5b",
                                   comment: "Sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.")
    static let sixthA  = ExerciseSet("e6a",
                                    comment: "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur.")
    static let sixthB  = ExerciseSet("e6b",
                                   comment: "Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.")
    static let sixthC  = ExerciseSet("e6c",
                                   comment: "Lminus id quod maxime placeat facere possimus, omnis voluptas assumenda est.")
}
