//
//  ExerciseInterfaceController.swift
//  WatchTest
//
//  Created by Igor Tudoran on 8/27/19.
//  Copyright © 2019 DIGIS IOS. All rights reserved.
//

import WatchKit
import Foundation

class ExerciseInterfaceController: WKInterfaceController {
    
    @IBOutlet weak var table: WKInterfaceTable!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        guard let currentExercise = context as? Exercise else {
                return
        }
        setTitle(currentExercise.name)
        configureTableWith(currentExercise)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    private func configureTableWith(_ exercise: Exercise) {
        let tableArray = exercise.sets
        table.setNumberOfRows(tableArray.count, withRowType: WatchRowControllers.exerciseRowController)
        
        for (index, set) in tableArray.enumerated() {
            if let row = table.rowController(at: index) as? ExerciseRowController {
                row.imageView.setImage(UIImage(named: set.imageName))
                row.commentLabel.setText(set.comment)
            }
        }
    }

}

class ExerciseRowController: NSObject {
    
    @IBOutlet weak var imageView: WKInterfaceImage!
    @IBOutlet weak var commentLabel: WKInterfaceLabel!
    
}
