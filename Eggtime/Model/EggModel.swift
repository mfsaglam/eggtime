//
//  EggModel.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 2.10.2021.
//

import Foundation

struct EggModel {
    var initialTemperature: EggTemperature
    var size: EggSize
    var softness: EggHardness
    
}

enum EggTemperature: String, CaseIterable {
    case fridge = "Fridge temperature"
    case room = "Room temperature"
    
    static var allCases: [EggTemperature] {
        return [.fridge, .room]
    }
}

enum EggSize: String, CaseIterable {
    case smallSize = "Small"
    case mediumSize = "Medium"
    case largeSize = "Large"
    
    static var allCases: [EggSize] {
        return [.smallSize, .mediumSize, .largeSize]
    }
}

enum EggHardness: String, CaseIterable {
    case softBoiled = "Soft"
    case mediumBoiled = "Medium"
    case hardBoiled = "Hard"
    
    static var allCases: [EggHardness] {
        return [.softBoiled, .mediumBoiled, .hardBoiled]
    }
}
