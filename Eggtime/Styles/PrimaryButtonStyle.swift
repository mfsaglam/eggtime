//
//  PrimaryButtonStyle.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 6.11.2021.
//

import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        return PrimaryButton(configuration: configuration)
    }
    
    struct PrimaryButton: View {
        let configuration: Configuration
        let fillColor = Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        var body: some View {
            return configuration.label
            
        }
    }
}
