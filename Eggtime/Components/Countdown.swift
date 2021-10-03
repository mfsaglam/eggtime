//
//  CircularProgress.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 1.10.2021.
//

import SwiftUI

let timer = Timer
    .publish(every: 1, on: .main, in: .common)
    .autoconnect()
 
struct Countdown: View {
     
    @State var counter: Int = 0
    var countTo: Int = 240
    var lineWidth: CGFloat = 15
     
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .stroke(Color.black, style: StrokeStyle(lineWidth: 15, dash: [2.6,22], dashPhase: 20))
                    .frame(width: 220, height: 220)
                    .opacity(0.05)
                Circle()
                    .fill(Color.clear)
                    .frame(width: 250, height: 250)
                    .overlay(
                        Circle().stroke(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), lineWidth: lineWidth)
                            .opacity(0.1)
                )
                 
                Circle()
                    .fill(Color.clear)
                    .frame(width: 250, height: 250)
                    .overlay(
                        Circle().trim(from:0, to: progress())
                            .stroke(
                                style: StrokeStyle(
                                    lineWidth: lineWidth,
                                    lineCap: .round,
                                    lineJoin:.round
                                )
                            )
                            .fill(
                                (AngularGradient(
                                    gradient: Gradient(stops: [
                                                        .init(color: Color(#colorLiteral(red: 0.8705882430076599, green: 0.6627451777458191, blue: 0.529411792755127, alpha: 0.10000000149011612)), location: 0),
                                                        .init(color: Color(#colorLiteral(red: 0.8705882430076599, green: 0.6627451181411743, blue: 0.529411792755127, alpha: 1)), location: 0.6),
                                                            .init(color: Color(#colorLiteral(red: 0.8705882430076599, green: 0.6627451777458191, blue: 0.529411792755127, alpha: 0.10000000149011612)), location: 0.99)]),
                                    center: UnitPoint(x: 0.5, y: 0.5)
                                  )
                                )
                            ).animation(
                                .easeInOut(duration: 0.2)
                            )
                    )
                    .rotationEffect(Angle(degrees: -90))
                
                
                 
                Clock(counter: counter, countTo: countTo)
                    .offset(y: -40)
            }
        }.onReceive(timer) { time in
            if (self.counter < self.countTo) {
                self.counter += 1
            }
        }
    }
     
    func completed() -> Bool {
        return progress() == 1
    }
     
    func progress() -> CGFloat {
        return (CGFloat(counter) / CGFloat(countTo))
    }
}
 
struct Clock: View {
    var counter: Int
    var countTo: Int
     
    var body: some View {
        VStack {
            HStack(alignment: .firstTextBaseline) {
                counterToMinutes()
                    .font(Font.custom("AzeretMono-ExtraBold", size: 45))
                Text("MIN")
                    .font(.body)
                    .bold()
                    .foregroundColor(.secondary)
            }
        }
    }
     
    func counterToMinutes() -> Text {
        let  currentTime = countTo - counter
         
        return Text(Date().addingTimeInterval(TimeInterval(currentTime)), style: .timer)
    }
}
 
struct Countdown_Previews: PreviewProvider {
    static var previews: some View {
        Countdown(counter: 158, countTo: 240)
    }
}
