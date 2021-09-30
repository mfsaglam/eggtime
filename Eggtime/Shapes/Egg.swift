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
            .fill(AngularGradient(
                gradient: Gradient(stops: [
            .init(color: Color(#colorLiteral(red: 0.6470588445663452, green: 0.4156862795352936, blue: 0.1921568661928177, alpha: 1)), location: 0.0833333358168602),
            .init(color: Color(#colorLiteral(red: 0.9725490212440491, green: 0.886274516582489, blue: 0.7960784435272217, alpha: 1)), location: 0.4583333432674408),
            .init(color: Color(#colorLiteral(red: 0.960493803024292, green: 0.8688453435897827, blue: 0.7737109661102295, alpha: 1)), location: 0.5572916865348816),
            .init(color: Color(#colorLiteral(red: 0.6537699699401855, green: 0.4253891110420227, blue: 0.20460882782936096, alpha: 1)), location: 0.8958333134651184)]),
                center: UnitPoint(x: 0.45089284919434713, y: 0.49999999359200287))
            )
            .frame(width: 250, height: 320)
    }
}

struct Egg_Previews: PreviewProvider {
    static var previews: some View {
        Egg()
    }
}
