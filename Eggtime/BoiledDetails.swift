//
//  BoiledDetails.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 24.09.2021.
//

import SwiftUI

struct BoiledDetails: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Set")
                            .font(.system(size: 25, weight: .regular, design: .default))
                        Text("boiled details")
                            .font(.system(size: 25, weight: .bold, design: .default))
                    }
                    Text("Prepare eggs as you like!")
                        .font(.system(size: 17, weight: .semibold, design: .default))
                        .foregroundColor(.gray)
                }
                Spacer()
                Egg()
                    .frame(width: 150, height: 190)
                    .offset(x: 80)
            }
            .padding()
            VStack(spacing: 25) {
                HStack {
                    Text("Egg")
                        .font(.system(size: 20, weight: .regular, design: .default))
                    Text("temperature")
                        .font(.system(size: 20, weight: .semibold, design: .default))
                    Spacer()
                }
                HStack {
                    Text("Fridge temperature")
                        .frame(width: 180, height: 60)
                        .background(RoundedRectangle(cornerRadius: 5)
                                        .stroke(lineWidth: 2)
                        )
                        .foregroundColor(Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)))
                    Text("Room temperature")
                        .frame(width: 180, height: 60)
                        .background(RoundedRectangle(cornerRadius: 5)
                                        .stroke(lineWidth: 2)
                        )
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                }
            }
            .padding(20)
            
            VStack(spacing: 25) {
                HStack {
                    Text("Egg")
                        .font(.system(size: 20, weight: .regular, design: .default))
                    Text("Size")
                        .font(.system(size: 20, weight: .semibold, design: .default))
                    Spacer()
                }
                HStack(spacing: 20) {
                    Text("S")
                        .frame(width: 110, height: 60)
                        .background(RoundedRectangle(cornerRadius: 5)
                                        .stroke(lineWidth: 2)
                        )
                        .foregroundColor(Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)))
                    Text("M")
                        .frame(width: 110, height: 60)
                        .background(RoundedRectangle(cornerRadius: 5)
                                        .stroke(lineWidth: 2)
                        )
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    Text("L")
                        .frame(width: 110, height: 60)
                        .background(RoundedRectangle(cornerRadius: 5)
                                        .stroke(lineWidth: 2)
                        )
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                }
            }
            .padding(20)
        }
    }
}

struct BoiledDetails_Previews: PreviewProvider {
    static var previews: some View {
        BoiledDetails()
    }
}
