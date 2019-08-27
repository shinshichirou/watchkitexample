//
//  MainViewModel.swift
//  WatchTest
//
//  Created by Igor Tudoran on 8/27/19.
//  Copyright © 2019 DIGIS IOS. All rights reserved.
//

import Foundation

protocol MainViewModelDelegate: class {
    func updateInterface()
}

class MainViewModel {
    
    var currentCount = 1
    weak var delegate: MainViewModelDelegate?
    
    func addExercise() {
        if currentCount < 999 {
            currentCount += 1
        }
        delegate?.updateInterface()
    }
    
    func removeExercise() {
        if currentCount > 1 {
            currentCount -= 1
        }
        delegate?.updateInterface()
    }
    
}
