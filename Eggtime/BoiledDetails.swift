//
//  BoiledDetails.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 24.09.2021.
//

import SwiftUI

struct BoiledDetails: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Set")
                            .font(Font.custom("Montserrat-Light", size: 20))
                        Text("boiled details")
                            .font(Font.custom("Montserrat-ExtraBold", size: 20))
                    }
                    Text("Prepare eggs as you like!")
                        .font(Font.custom("Montserrat-Light", size: 17))
                        .foregroundColor(.secondary)
                }
                Spacer()
                Egg()
                    .frame(width: 150, height: 190)
                    .overlay(
                        EggShape()
                            .fill(Color(#colorLiteral(red: 0.6470588445663452, green: 0.4156862795352936, blue: 0.1921568661928177, alpha: 1)))
                            .scaleEffect(0.65)
                            .blur(radius: 20)
                    )
                    .offset(x: 80)
            }
            VStack(spacing: 25) {
                HStack {
                    Text("Egg")
                        .font(Font.custom("Montserrat-Light", size: 20))
                    Text("temperature")
                        .font(Font.custom("Montserrat-ExtraBold", size: 20))
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
            
            VStack(spacing: 25) {
                HStack {
                    Text("Egg")
                        .font(Font.custom("Montserrat-Light", size: 20))
                    Text("size")
                        .font(Font.custom("Montserrat-ExtraBold", size: 20))
                    Spacer()
                }
                HStack(spacing: 30) {
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
            
            VStack(spacing: 50) {
                HStack {
                    Text("Egg")
                        .font(Font.custom("Montserrat-Light", size: 20))
                    Text("boiled type")
                        .font(Font.custom("Montserrat-ExtraBold", size: 20))
                    Spacer()
                }
                HStack(spacing: 75) {
                    ZStack {
                        Text("Soft")
                            .padding(.vertical)
                            .frame(width: 80, height: 110, alignment: .bottom)
                            .background(RoundedRectangle(cornerRadius: 5)
                                            .stroke(lineWidth: 2)
                            )
                            .foregroundColor(Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)))
                        CookedEgg()
                            .scaleEffect(x: 0.25, y: 0.25, anchor: .center)
                            .frame(width: 20, height: 20)
                            .offset(y: -50)
                    }
                    ZStack {
                        Text("Medium")
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                            .padding(.vertical)
                            .frame(width: 80, height: 110, alignment: .bottom)
                            .background(RoundedRectangle(cornerRadius: 5)
                                            .stroke(lineWidth: 2)
                            )
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        CookedEgg()
                            .scaleEffect(x: 0.25, y: 0.25, anchor: .center)
                            .frame(width: 20, height: 20)
                            .offset(y: -50)
                    }
                    
                    ZStack {
                        Text("Hard")
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                            .padding(.bottom)
                            .frame(width: 80, height: 110, alignment: .bottom)
                            .background(RoundedRectangle(cornerRadius: 5)
                                            .stroke(lineWidth: 2)
                            )
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        CookedEgg()
                            .scaleEffect(x: 0.25, y: 0.25, anchor: .center)
                            .frame(width: 20, height: 20)
                            .offset(y: -50)
                    }
                }
            }
            
            HStack(alignment: .bottom) {
                VStack(alignment: .leading) {
                    Text("Estimated boiled time")
                        .font(Font.custom("Montserrat-Light", size: 17))
                    HStack(alignment: .firstTextBaseline) {
                        Text("8:30")
                            .font(Font.custom("Montserrat-ExtraBold", size: 35))
                        Text("MIN")
                            .font(.footnote)
                            .bold()
                    }
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.white)
                    .frame(width: 60, height: 60)
                    .background(Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)))
                    .clipShape(RoundedRectangle(cornerRadius: 7, style: .continuous))
            }
        }
        .padding(.horizontal)
    }
}

struct BoiledDetails_Previews: PreviewProvider {
    static var previews: some View {
        BoiledDetails()
    }
}
