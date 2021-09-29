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
            .padding(20)
            
            VStack(spacing: 50) {
                HStack {
                    Text("Egg")
                        .font(.system(size: 20, weight: .regular, design: .default))
                    Text("boiled type")
                        .font(.system(size: 20, weight: .semibold, design: .default))
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
            .padding(20)
            
            HStack(alignment: .bottom) {
                VStack(alignment: .leading) {
                    Text("Estimated boiled time")
                    HStack(alignment: .firstTextBaseline) {
                        Text("8:30")
                            .font(.system(size: 35, weight: .heavy))
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
            .padding(.horizontal)
        }
    }
}

struct BoiledDetails_Previews: PreviewProvider {
    static var previews: some View {
        BoiledDetails()
    }
}
