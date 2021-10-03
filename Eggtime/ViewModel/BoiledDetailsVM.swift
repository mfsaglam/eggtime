//
//  BoiledDetailsVM.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 2.10.2021.
//

import Foundation

class BoiledDetailsVM: ObservableObject {
    
    func getEstimatedBoiledTime(temperature: String, size: String, hardness: String) -> Int {
        if temperature == "Fridge temperature" {
            if size == "S" {
                if hardness == "Soft" {
                    return 240
                } else if hardness == "Medium" {
                    return 360
                } else {
                    return 600
                }
            } else if size == "M" {
                //TODO: - Adjust these for medium size
                if hardness == "Soft" {
                    return 240
                } else if hardness == "Medium" {
                    return 360
                } else {
                    return 600
                }
            } else {
                //TODO: - Adjust these for large size
                if hardness == "Soft" {
                    return 240
                } else if hardness == "Medium" {
                    return 360
                } else {
                    return 600
                }
            }
        } else {//If temperature is room
            if size == "S" {
                if hardness == "Soft" {
                    return 240
                } else if hardness == "Medium" {
                    return 360
                } else {
                    return 600
                }
            } else if size == "M" {
                //TODO: - Adjust these for medium size
                if hardness == "Soft" {
                    return 240
                } else if hardness == "Medium" {
                    return 360
                } else {
                    return 600
                }
            } else {
                //TODO: - Adjust these for large size
                if hardness == "Soft" {
                    return 240
                } else if hardness == "Medium" {
                    return 360
                } else {
                    return 600
                }
            }
        }
    }
}
