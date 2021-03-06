//
//  BoilTime.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 30.09.2021.
//

import SwiftUI

struct BoilTime: View {
    
    @EnvironmentObject var vm: BoiledDetailsVM
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.left")
                    .font(Font.title.weight(.semibold))
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
                Spacer()
                ThinBoldHeader(thinText: "", boldText: "\(vm.hardness) boiled eggs", size: 20)
                    .offset(x: -21.5)
                Spacer()
            }
            Spacer()
                .frame(height: 30)
            ZStack {
                Circle()
                    .stroke(lineWidth: 3)
                    .opacity(0.09)
                    .foregroundColor(.secondary)
                    .padding()
                    .frame(width: 350, height: 350)
                Circle()
                    .fill()
                    .foregroundColor(.secondary)
                    .opacity(0.05)
                    .padding()
                    .frame(width: 350, height: 350)
                Egg()
                    .overlay(
                        EggShape()
                            .fill(Color(#colorLiteral(red: 0.6470588445663452, green: 0.4156862795352936, blue: 0.1921568661928177, alpha: 1)))
                            .scaleEffect(0.70)
                            .blur(radius: 40)
                    )
                    .scaleEffect(CGSize(width: 0.45, height: 0.45), anchor: .center)
                    .offset(y: 70)
                    .mask(
                        Circle()
                            .frame(width: 235, height: 235)
                    )
                ProgressCircle(countTo: $vm.estimatedBoiledTime)
                
            }
            Spacer()
            HStack {
                IconWithText(image: "timer", text: "Boiled time")
                Spacer()
                HStack(alignment: .firstTextBaseline) {
//                    Text("\(boiledTime)")
                    Text("\(vm.estimatedBoiledTime.timeStyle())")
                        .font(Font.custom("Montserrat-ExtraBold", size: 25))
                    Text("MIN")
                        .font(.footnote)
                        .bold()
                }
            }
            Spacer()
                .frame(height: 40)
            HStack {
                IconWithText(image: "thermometer", text: "Water temperature")
                Spacer()
                HStack(alignment: .top, spacing: 1) {
                    Text("100")
                        .font(Font.custom("Montserrat-ExtraBold", size: 25))
                    Text("°C")
                        .font(.footnote)
                        .bold()
                }
            }
            VStack {
                Divider()
                    .padding(.horizontal)
                Spacer()
                ThinBoldHeader(thinText: "", boldText: "Boiled Tip", size: 15)
                Spacer()
                ScrollView(showsIndicators: false) {
                    Text(vm.getTips())
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                }
                Spacer()
                ActionButton(text: "STOP") {
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
        .padding()
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}


struct BoilTime_Previews: PreviewProvider {
    static var previews: some View {
        BoilTime()
            .environmentObject(BoiledDetailsVM())
        
    }
}
