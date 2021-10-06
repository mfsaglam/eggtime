//
//  BoiledDetailsVM.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 2.10.2021.
//

import Foundation

class BoiledDetailsVM: ObservableObject {
    
    @Published var estimatedBoiledTime: Int = 0
    
    
    func getEstimatedBoiledTime(temperature: String, size: String, hardness: String) {
        if temperature == "Fridge temperature" {
            if size == "S" {
                if hardness == "Soft" {
                    estimatedBoiledTime = 10
                } else if hardness == "Medium" {
                    estimatedBoiledTime = 360
                } else {
                    estimatedBoiledTime = 600
                }
            } else if size == "M" {
                //TODO: - Adjust these for medium size
                if hardness == "Soft" {
                    estimatedBoiledTime = 240
                } else if hardness == "Medium" {
                    estimatedBoiledTime = 360
                } else {
                    estimatedBoiledTime = 600
                }
            } else {
                //TODO: - Adjust these for large size
                if hardness == "Soft" {
                    estimatedBoiledTime = 240
                } else if hardness == "Medium" {
                    estimatedBoiledTime = 360
                } else {
                    estimatedBoiledTime = 600
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
                    estimatedBoiledTime = 240
                } else if hardness == "Medium" {
                    estimatedBoiledTime = 360
                } else {
                    estimatedBoiledTime = 600
                }
            } else {
                //TODO: - Adjust these for large size
                if hardness == "Soft" {
                    estimatedBoiledTime = 240
                } else if hardness == "Medium" {
                    estimatedBoiledTime = 360
                } else {
                    estimatedBoiledTime = 600
                }
            }
        }
    }
}
