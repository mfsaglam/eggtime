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
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    ThinBoldHeader(thinText: "Set", boldText: "boiled details")
                    Text("Prepare eggs as you like!")
                        .font(Font.custom("Montserrat-Light", size: 17))
                        .foregroundColor(.secondary)
                }
                .offset(y: 30)
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
                ThinBoldHeader(thinText: "Egg", boldText: "temperature")
                HStack(spacing: 0) {
                    ButtonStandart(text: "Fridge temperature", horizontalPadding: 20, isSelected: true)
                    Spacer()
                    ButtonStandart(text: "Room temperature", horizontalPadding: 20, isSelected: false)
                }
                
            }
            
            VStack(spacing: 25) {
                ThinBoldHeader(thinText: "Egg", boldText: "size")
                HStack(spacing: 0) {
                    ButtonStandart(text: "S", horizontalPadding: 45, isSelected: true)
                    Spacer()
                    ButtonStandart(text: "M", horizontalPadding: 45, isSelected: false)
                    Spacer()
                    ButtonStandart(text: "L", horizontalPadding: 45, isSelected: false)
                }
            }
            
            VStack(spacing: 50) {
                ThinBoldHeader(thinText: "Egg", boldText: "boiled type")
                HStack(spacing: 0) {
                    ButtonWithEgg(text: "Soft", isSelected: true)
                    Spacer()
                    ButtonWithEgg(text: "Medium", isSelected: false)
                    Spacer()
                    ButtonWithEgg(text: "Hard", isSelected: false)
                }
            }
            
            Spacer()
            
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
            .preferredColorScheme(.dark)
    }
}

struct ButtonWithEgg: View {
    var text: String
    var isSelected: Bool
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(text)
                Text("boiled").bold()
            }
            .foregroundColor(isSelected ? Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)) : .primary)
            .padding(.vertical)
            .frame(width: 100, height: 120, alignment: .bottom)
            .background(RoundedRectangle(cornerRadius: 5)
                            .stroke(lineWidth: 2)
            )
            .foregroundColor(isSelected ? Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)) : Color(#colorLiteral(red: 0.8038417101, green: 0.8039775491, blue: 0.8038237691, alpha: 1)))
            CookedEgg()
                .scaleEffect(x: 0.25, y: 0.25, anchor: .center)
                .frame(width: 20, height: 20)
                .offset(y: -50)
        }
    }
}

struct ButtonStandart: View {
    var text: String
    var horizontalPadding: CGFloat
    var isSelected: Bool
    var body: some View {
        HStack {
            if text.contains(" ") {
                HStack {
                    Text("\(text.components(separatedBy: " ")[0])")
                        .font(.callout)
                    Text("\(text.components(separatedBy: " ")[1])")
                        .font(.callout)
                        .bold()
                }
            } else {
                Text(text)
                    .font(.headline)
            }
        }
        .padding(.horizontal, horizontalPadding)
        .padding(.vertical, 19)
        .background(RoundedRectangle(cornerRadius: 5)
                        .stroke(lineWidth: 2)
        )
        .foregroundColor(isSelected ? Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)) : Color(#colorLiteral(red: 0.8038417101, green: 0.8039775491, blue: 0.8038237691, alpha: 1)))
    }
}

struct ThinBoldHeader: View {
    var thinText: String
    var boldText: String
    var body: some View {
        HStack {
            Text(thinText)
                .font(Font.custom("Montserrat-Light", size: 20))
            Text(boldText)
                .font(Font.custom("Montserrat-ExtraBold", size: 20))
            Spacer()
        }
    }
}
