//
//  ContentView.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 24.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            VStack(spacing: -15) {
                Spacer()
                Text("EGGTIME")
                    .font(Font.custom("Montserrat-ExtraBold", size: 30))
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)))
                Spacer()
                    .frame(height: 20 )
                VStack(spacing: -40) {
                    Text("Cook")
                        .font(Font.custom("Montserrat-ExtraBold", size: 80))
                        .bold()
                    Text("eggs")
                        .font(Font.custom("Montserrat-ExtraBold", size: 80))
                        .bold()
                }
                Spacer()
                    .frame(height: 40)
                Text("as you like!")
                    .font(Font.custom("Montserrat-ExtraBold", size: 30))
                Spacer()
                VStack(spacing: -5) {
                    Egg()
                        .frame(width: 250, height: 320)
                        .zIndex(1)
                        .overlay(
                            EggShape()
                                .fill(Color(#colorLiteral(red: 0.6470588445663452, green: 0.4156862795352936, blue: 0.1921568661928177, alpha: 1)))
                                .scaleEffect(0.7)
                                .blur(radius: 30)

                        )
                    Ellipse()
                        .frame(width: 150 ,height: 20)
                        .foregroundColor(.black)
                        .opacity(0.2)
                        .blur(radius: 10)
                        
                }
                Spacer()
                Text("LET'S COOK!")
                    .bold()
                    .frame(width: 300, height: 70)
                    .foregroundColor(.white)
                    .background(Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)))
                    .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
