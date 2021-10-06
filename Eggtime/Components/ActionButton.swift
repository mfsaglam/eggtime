//
//  ActionButton.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 30.09.2021.
//

import SwiftUI

struct ActionButton: View {
    var text: String
    var action: () -> Void
    var body: some View {
        Button(action: action) {
            Text(text)
                .bold()
                .frame(width: 350, height: 70)
                .foregroundColor(.white)
                .background(Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)))
                .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
        }
    }
}

struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionButton(text: "Test", action: {})
    }
}
