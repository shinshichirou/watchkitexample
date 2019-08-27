//
//  ExercisesInterfaceController.swift
//  WatchTest
//
//  Created by Igor Tudoran on 8/27/19.
//  Copyright © 2019 DIGIS IOS. All rights reserved.
//

import WatchKit
import Foundation

class ExercisesInterfaceController: WKInterfaceController {

    @IBOutlet weak var table: WKInterfaceTable!
    
    private var tableArray = [Exercise]()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        guard let contextDictionary = context as? [String: Any],
            let count = contextDictionary[WatchContextKeys.exerciseCount] as? Int else {
                return
        }
        setTitle("\(count) exercises")
        configureTableWith(count)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    private func configureTableWith(_ count: Int) {
        tableArray = Storage.generateContentWith(count)
        table.setNumberOfRows(tableArray.count, withRowType: WatchRowControllers.exercisesRowController)
        
        for (index, exercise) in tableArray.enumerated() {
            if let row = table.rowController(at: index) as? ExercisesRowController,
                let firstSet = exercise.sets.first {
                row.nameLabel.setText(exercise.name)
                row.imageView.setImage(UIImage(named: firstSet.imageName))
            }
        }
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        pushController(withName: WatchInterfaceIdentifier.exerciseDetails, context: tableArray[rowIndex])
    }

}

class ExercisesRowController: NSObject {
    
    @IBOutlet weak var imageView: WKInterfaceImage!
    @IBOutlet weak var nameLabel: WKInterfaceLabel!
    
}
