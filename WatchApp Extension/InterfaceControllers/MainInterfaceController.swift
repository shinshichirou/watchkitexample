//
//  MainInterfaceController.swift
//  WatchTest
//
//  Created by Igor Tudoran on 8/27/19.
//  Copyright © 2019 DIGIS IOS. All rights reserved.
//

import WatchKit
import Foundation

class MainInterfaceController: WKInterfaceController {

    @IBOutlet weak var countLabel: WKInterfaceLabel!
    
    private let viewModel = MainViewModel()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        viewModel.delegate = self
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func minusPressed() {
        viewModel.removeExercise()
    }
    
    @IBAction func plusPressed() {
        viewModel.addExercise()
    }
    
    @IBAction func addPressed() {
        let context = [WatchContextKeys.exerciseCount: viewModel.currentCount]
        pushController(withName: WatchInterfaceIdentifier.exercisesList, context: context)
    }
    
}

extension MainInterfaceController: MainViewModelDelegate {
    
    func updateInterface() {
        countLabel.setText("\(viewModel.currentCount)")
    }
    
}
