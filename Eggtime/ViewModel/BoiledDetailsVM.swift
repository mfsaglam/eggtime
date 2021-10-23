//
//  BoiledDetailsVM.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 2.10.2021.
//

import SwiftUI

class BoiledDetailsVM: ObservableObject {
    
    @AppStorage(wrappedValue: "Room temperature", "temperture") var temperature
    @AppStorage(wrappedValue: "M", "size") var size
    @AppStorage(wrappedValue: "Soft", "boiledType") var boiledType
    
    @Published var estimatedBoiledTime: Int = 0
    @Published var boiledTime: Int = 0
    @Published var startCooking = false

//    @Published var boiledType: String = ""
    
    var temperatures = ["Room temperature", "Fridge Temperature"]
    var eggSizes = ["S","M","L"]
    
    let tips = [
        "The best way to store hard boiled eggs is in a covered container in the refrigerator. They should be eaten within 5 days.",
        "If you live at high altitude, let the eggs sit in the hot water longer or lower the heat and maintain a low simmer for 10 to 12 minutes.",
        "Older eggs are easier to peel than fresh eggs.",
        "Adding a teaspoon of vinegar to the water may help keep egg whites from running out if an egg does crack while cooking. ",
        "After cooking, let the eggs rest in an ice-bath to shock them.",
        "Some people find adding 1/2 teaspoon of salt to the water helps prevent cracking as well as making the eggs easier to peel.",
        "If you have the type of stove burner that doesn't retain heat when turned off, you might want to lower the temp to low, simmer for minute, and then turn it off."
    ]
    
    func setTemperature(to temperature: String) {
        self.temperature = temperature
    }
    
    func setEggSize(to size: String) {
        self.size = size
    }
    
    func setBoiledType(to type: String) {
        self.boiledType = type
    }
    
    func getTips() -> String {
        if let tip = tips.randomElement() {
            return tip
        } else {
            return "No tip for today."
        }
    }
    
    
    func getEstimatedBoiledTime(temperature: String, size: String, hardness: String) {
        if temperature == "Fridge temperature" {
            if size == "S" {
                if hardness == "Soft" {
                    estimatedBoiledTime = 270
                } else if hardness == "Medium" {
                    estimatedBoiledTime = 390
                } else {
                    estimatedBoiledTime = 630
                }
            } else if size == "M" {
                //TODO: - Adjust these for medium size
                if hardness == "Soft" {
                    estimatedBoiledTime = 300
                } else if hardness == "Medium" {
                    estimatedBoiledTime = 420
                } else {
                    estimatedBoiledTime = 660
                }
            } else {
                //TODO: - Adjust these for large size
                if hardness == "Soft" {
                    estimatedBoiledTime = 330
                } else if hardness == "Medium" {
                    estimatedBoiledTime = 450
                } else {
                    estimatedBoiledTime = 690
                }
            }
        } else {//If temperature is room
            if size == "S" {
                if hardness == "Soft" {
                    estimatedBoiledTime = 240
                } else if hardness == "Medium" {
                    estimatedBoiledTime = 360
                } else {
                    estimatedBoiledTime = 600
                }
            } else if size == "M" {
                //TODO: - Adjust these for medium size
                if hardness == "Soft" {
                    estimatedBoiledTime = 270
                } else if hardness == "Medium" {
                    estimatedBoiledTime = 390
                } else {
                    estimatedBoiledTime = 630
                }
            } else {
                //TODO: - Adjust these for large size
                if hardness == "Soft" {
                    estimatedBoiledTime = 300
                } else if hardness == "Medium" {
                    estimatedBoiledTime = 420
                } else {
                    estimatedBoiledTime = 660
                }
            }
        }
    }
}
