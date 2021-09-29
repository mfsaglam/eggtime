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
    var body: some View {
        HStack {
            Text(thinText)
                .font(Font.custom("Montserrat-Light", size: 20))
            Text(boldText)
                .font(Font.custom("Montserrat-ExtraBold", size: 20))
            Spacer()
        }
    }
}

struct ThinBoldHeader_Previews: PreviewProvider {
    static var previews: some View {
        ThinBoldHeader(thinText: "Test", boldText: "Test")
    }
}
