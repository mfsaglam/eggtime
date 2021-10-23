//
//  ThinBoldHeader.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 29.09.2021.
//

import SwiftUI

struct ThinBoldHeader: View {
    var thinText: String
    var boldText: String
    var size: CGFloat
    var body: some View {
        Text("\(thinText) ")
            .font(Font.custom("Montserrat-Light", size: size))
        + Text(boldText)
            .font(Font.custom("Montserrat-ExtraBold", size: size))

    }
}

struct ThinBoldHeader_Previews: PreviewProvider {
    static var previews: some View {
        ThinBoldHeader(thinText: "Test", boldText: "Test", size: 20)
    }
}
