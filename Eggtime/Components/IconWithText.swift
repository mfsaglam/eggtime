//
//  IconWithText.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 1.10.2021.
//

import SwiftUI

struct IconWithText: View {
    var image: String
    var text: String
    var body: some View {
        HStack {
            Image(systemName: image)
                .font(.title)
                .frame(width: 45, height: 45)
                .background(Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)).opacity(0.3))
                .foregroundColor(Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)))
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            ThinBoldHeader(thinText: text, boldText: "", size: 20)
                .foregroundColor(.secondary)
        }
    }
}


struct IconWithText_Previews: PreviewProvider {
    static var previews: some View {
        IconWithText(image: "chevron.right", text: "Test")
    }
}
