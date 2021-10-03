//
//  Extensions.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 3.10.2021.
//

import SwiftUI

extension Int {
    mutating func convertToMinutes() -> Text {
        if self == 0 {
            return Text("0:00")
        } else {
            return Text("\((self % 3600) / 60):\((self % 3600) % 60)0")

        }
    }
}
