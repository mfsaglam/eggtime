//
//  EggYellow2.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 24.09.2021.
//

import SwiftUI

struct EggYellow2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.46665*width, y: 0.38209*height))
        path.addCurve(to: CGPoint(x: 0.68857*width, y: 0.06497*height), control1: CGPoint(x: 0.65153*width, y: 0.22121*height), control2: CGPoint(x: 0.53984*width, y: 0.086*height))
        path.addCurve(to: CGPoint(x: 0.69794*width, y: 0.66811*height), control1: CGPoint(x: 0.83729*width, y: 0.04393*height), control2: CGPoint(x: 0.87308*width, y: 0.51571*height))
        path.addCurve(to: CGPoint(x: 0.05634*width, y: 0.60877*height), control1: CGPoint(x: 0.50161*width, y: 0.83895*height), control2: CGPoint(x: 0.03778*width, y: 0.82461*height))
        path.addCurve(to: CGPoint(x: 0.46665*width, y: 0.38209*height), control1: CGPoint(x: 0.07489*width, y: 0.39294*height), control2: CGPoint(x: 0.26158*width, y: 0.56054*height))
        path.closeSubpath()
        return path
    }
}

struct EggYellow2_Previews: PreviewProvider {
    static var previews: some View {
        EggYellow2()
    }
}
