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
                .background(Color(#colorLiteral(red: 0.9019607843, green: 0.5725490196, blue: 0.4117647059, alpha: 1)).opacity(0.3))
                .foregroundColor(Color("IconAccentColor"))
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            ThinBoldHeader(thinText: text, boldText: "", size: 20)
                .foregroundColor(.secondary)
        }
    }
}


struct IconWithText_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IconWithText(image: "chevron.right", text: "Test")
            IconWithText(image: "chevron.right", text: "Test")
                .preferredColorScheme(.dark)
        }
    }
}
