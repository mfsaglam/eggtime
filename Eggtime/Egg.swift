//
//  Egg.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 24.09.2021.
//

import SwiftUI

struct Egg: View {
    var body: some View {
        EggShape()
            .fill(LinearGradient(
                    gradient: Gradient(stops: [
                .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), location: 0),
                .init(color: Color(#colorLiteral(red: 0.862500011920929, green: 0.6138125061988831, blue: 0.2407812476158142, alpha: 1)), location: 1)]),
                    startPoint: UnitPoint(x: 0.050215104847685765, y: -0.0517240971499483),
                    endPoint: UnitPoint(x: 0.7747487028645977, y: 0.8405172174560209)))
    }
}

struct Egg_Previews: PreviewProvider {
    static var previews: some View {
        Egg()
    }
}
