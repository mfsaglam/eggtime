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
            return Text("\((self % 3600) / 60):\((self % 3600) % 60)")

        }
    }
}

extension Int {
    func timeStyle() -> String {
        let minutes = self / 60 % 60
        let seconds = self % 60
        return String(format:"%02d:%02d", minutes, seconds)
    }
}
