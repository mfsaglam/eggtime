//
//  CookedEgg.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 24.09.2021.
//

import SwiftUI

struct CookedEgg: View {
    var body: some View {
        EggShape()
            .fill(LinearGradient(
                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 0.8916666507720947, green: 0.8916666507720947, blue: 0.8916666507720947, alpha: 1)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 1, green: 0.9983333349227905, blue: 0.9958333373069763, alpha: 1)), location: 1)]),
                    startPoint: UnitPoint(x: -0.10267861192068262, y: -0.25999998073241987),
                    endPoint: UnitPoint(x: 1.1607142587003048, y: 1.4399999939110248)))
            .frame(width: 250, height: 320)
            .overlay(
                Circle()
                    .fill(RadialGradient(
                        gradient: Gradient(stops: [
                                            .init(color: Color(#colorLiteral(red: 0.9137254953384399, green: 0.6470588445663452, blue: 0.24313725531101227, alpha: 1)), location: 0),
                                            .init(color: Color(#colorLiteral(red: 0.8352941274642944, green: 0.5411764979362488, blue: 0.21960784494876862, alpha: 1)), location: 1)]),
                        center: UnitPoint(x: 0.5290177806801635, y: 0.5900000046020861),
                        startRadius: 1.1090853994894816,
                        endRadius: 140.31737936243374
                    ))
                    .frame(width: 180)
                    .offset(x: 0, y: 30)
                    .shadow(color: Color(#colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)), radius: 15)
                    .overlay(
                        EggYellow1()
                            .fill(LinearGradient(
                                    gradient: Gradient(stops: [
                                                        .init(color: Color(#colorLiteral(red: 0.929411768913269, green: 0.6745098233222961, blue: 0.3333333432674408, alpha: 1)), location: 0),
                                                        .init(color: Color(#colorLiteral(red: 0.9529411792755127, green: 0.7568627595901489, blue: 0.4274509847164154, alpha: 1)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.05803563064979006, y: 0.07000001601430225),
                                    endPoint: UnitPoint(x: 0.9999999307105369, y: 1.10999999318987)))
                            .frame(width:140 , height: 140)
                            .offset(x: -30, y: -10)
                            .blur(radius: 5)
                    )
                    .overlay(EggYellow2()
                                .fill(LinearGradient(
                                        gradient: Gradient(stops: [
                                                            .init(color: Color(#colorLiteral(red: 0.9764705896377563, green: 0.8705882430076599, blue: 0.6470588445663452, alpha: 1)), location: 0),
                                                            .init(color: Color(#colorLiteral(red: 0.9764705896377563, green: 0.8627451062202454, blue: 0.6549019813537598, alpha: 1)), location: 1)]),
                                        startPoint: UnitPoint(x: 0.05803563064979006, y: 0.07000001601430225),
                                        endPoint: UnitPoint(x: 0.9999999307105369, y: 1.10999999318987)))
                                .frame(width: 170, height: 130)
                                .offset(x: 20, y:70)
                                .blur(radius: 5)
                    )
            )
    }
}

struct CookedEgg_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            CookedEgg()
        }
    }
}
