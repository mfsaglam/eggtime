//
//  EggYellow1.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 24.09.2021.
//

import SwiftUI

struct EggYellow1: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.38011*width, y: 0.32161*height))
        path.addCurve(to: CGPoint(x: 0.96388*width, y: 0.33677*height), control1: CGPoint(x: 0.56721*width, y: 0.16961*height), control2: CGPoint(x: 0.97301*width, y: 0.19748*height))
        path.addCurve(to: CGPoint(x: 0.566*width, y: 0.58967*height), control1: CGPoint(x: 0.95476*width, y: 0.47605*height), control2: CGPoint(x: 0.76713*width, y: 0.47634*height))
        path.addCurve(to: CGPoint(x: 0.20714*width, y: 0.95157*height), control1: CGPoint(x: 0.39699*width, y: 0.68491*height), control2: CGPoint(x: 0.33643*width, y: 1.031*height))
        path.addCurve(to: CGPoint(x: 0.38011*width, y: 0.32161*height), control1: CGPoint(x: 0.07785*width, y: 0.87214*height), control2: CGPoint(x: 0.19773*width, y: 0.46978*height))
        path.closeSubpath()
        return path
    }
}

struct EggYellow1_Previews: PreviewProvider {
    static var previews: some View {
        EggYellow1()
    }
}
