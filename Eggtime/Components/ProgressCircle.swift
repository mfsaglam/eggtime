//
//  ProgressCircle.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 6.10.2021.
//

import SwiftUI

struct ProgressCircle: View {
        
    @State var isActive = true
    @State var counted: Int = 0
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @Binding var countTo: Int

    var lineWidth: CGFloat = 15
    
    var progress: CGFloat {
        return (CGFloat(counted) / CGFloat(countTo))
    }
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.secondary, style: StrokeStyle(lineWidth: 15, dash: [2.6,22], dashPhase: 20))
                .frame(width: 220, height: 220)
                .opacity(0.3)
            Circle()
                .fill(Color.clear)
                .frame(width: 250, height: 250)
                .overlay(
                    Circle().stroke(Color.primary, lineWidth: lineWidth)
                        .opacity(0.1)
                )
            
            Circle()
                .fill(Color.clear)
                .frame(width: 250, height: 250)
                .overlay(
                    Circle().trim(from:0, to: progress)
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
                                center: UnitPoint(x: 0.5, y: 0.5))
                            )
                        ).animation(
                            .easeInOut(duration: 0.2)
                        )
                )
                .rotationEffect(Angle(degrees: -90))
            
            Clock(counter: counted, countTo: countTo)
                .offset(y: -40)
        }
        .onReceive(timer) { _ in
            guard self.isActive else { return }
            
            if countTo - counted != 0 {
                counted += 1
            }
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
            self.isActive = false
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)) { _ in
            self.isActive = true
        }
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
         
        return Text("\(currentTime.timeStyle())")
    }
}

struct ProgressCircle_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProgressCircle(counted: 150, countTo: .constant(200))
                .preferredColorScheme(.dark)
            ProgressCircle(counted: 150, countTo: .constant(200))
                .preferredColorScheme(.light)
        }
    }
}
