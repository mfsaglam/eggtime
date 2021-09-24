//
//  Egg.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 24.09.2021.
//
import SwiftUI

struct EggShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.49675*width, y: 0))
        path.addCurve(to: CGPoint(x: width, y: 0.56533*height), control1: CGPoint(x: 0.79866*width, y: 0), control2: CGPoint(x: width, y: 0.33367*height))
        path.addCurve(to: CGPoint(x: 0.49675*width, y: height), control1: CGPoint(x: width, y: 0.79901*height), control2: CGPoint(x: 0.83188*width, y: height))
        path.addCurve(to: CGPoint(x: 0.00143*width, y: 0.56533*height), control1: CGPoint(x: 0.16865*width, y: height), control2: CGPoint(x: 0.00143*width, y: 0.79411*height))
        path.addCurve(to: CGPoint(x: 0.49675*width, y: 0), control1: CGPoint(x: 0.00143*width, y: 0.33861*height), control2: CGPoint(x: 0.19484*width, y: 0))
        path.closeSubpath()
        return path
    }
}

struct EggShape_Previews: PreviewProvider {
    static var previews: some View {
        EggShape()
    }
}
