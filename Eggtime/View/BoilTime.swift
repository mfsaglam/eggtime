//
//  BoilTime.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 30.09.2021.
//

import SwiftUI

struct BoilTime: View {
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
                ThinBoldHeader(thinText: "", boldText: "Soft boiled eggs", size: 20)
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
                Circle()
                    .stroke(lineWidth: 7)
                    .foregroundColor(.secondary)
                    .opacity(0.2)
                    .padding()
                    .frame(width: 300, height: 300)
                    .shadow(radius: 20)
                Egg()
                    .overlay(
                        EggShape()
                            .fill(Color(#colorLiteral(red: 0.6470588445663452, green: 0.4156862795352936, blue: 0.1921568661928177, alpha: 1)))
                            .scaleEffect(0.70)
                            .blur(radius: 40)
                    )
                    .scaleEffect(CGSize(width: 0.45, height: 0.45), anchor: .center)
                    .offset(y: 55)
                    .mask(
                        Circle()
                            .frame(width: 209, height: 206)
                    )
                
                Circle()
                    .stroke(lineWidth: 12)
                    .foregroundColor(.secondary)
                    .opacity(0.2)
                    .padding()
                    .frame(width: 250, height: 250)
                    
                
                
            }
            Spacer()
            HStack {
                IconWithText(image: "timer", text: "Boiled time")
                Spacer()
                HStack(alignment: .firstTextBaseline) {
                    Text("8:30")
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
                Text("After cooking, let the eggs rest in an ice-bath to shock them.")
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                Spacer()
                ActionButton(text: "STOP")
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
        
    }
}

struct IconWithText: View {
    var image: String
    var text: String
    var body: some View {
        HStack {
            Image(systemName: image)
                .font(.title)
                .frame(width: 45, height: 45)
                .background(Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)).opacity(0.3))
                .foregroundColor(Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)))
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            ThinBoldHeader(thinText: text, boldText: "", size: 20)
                .foregroundColor(.secondary)
        }
    }
}
