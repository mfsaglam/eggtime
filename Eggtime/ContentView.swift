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
            background(Color(#colorLiteral(red: 0.9986035228, green: 0.9838824868, blue: 0.9710287452, alpha: 1)))
            VStack(spacing: -20) {
                Spacer()
                Text("EGGTIME")
                    .font(.system(size: 25, weight: .heavy, design: .default))
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)))
                Spacer()
                    .frame(height: 20 )
                VStack(spacing: -40) {
                    Text("Cook")
                        .font(.system(size: 90, weight: .heavy, design: .default))
                        .bold()
                    Text("eggs")
                        .font(.system(size: 90, weight: .heavy, design: .default))
                        .bold()
                }
                Spacer()
                    .frame(height: 40)
                Text("as you like!")
                    .font(.system(size: 30, weight: .bold, design: .default))
                Spacer()
                Egg()
                    .frame(width: 250, height: 320)
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
