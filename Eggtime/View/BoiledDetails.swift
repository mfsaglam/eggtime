//
//  BoiledDetails.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 24.09.2021.
//

import SwiftUI

struct BoiledDetails: View {
    
    @State var temperature: String = "Room temperature"
    @State var size: String = "M"
    @State var boiledType = "Soft"
    
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
                    ButtonStandart(selectedItem: $temperature, text: ["Fridge temperature", "Room temperature"], horizontalPadding: 20)
                }
                
            }
            
            VStack(spacing: 25) {
                ThinBoldHeader(thinText: "Egg", boldText: "size")
                HStack(spacing: 0) {
                    ButtonStandart(selectedItem: $size, text: ["S", "M", "L"], horizontalPadding: 45)
                }
            }
            
            VStack(spacing: 50) {
                ThinBoldHeader(thinText: "Egg", boldText: "boiled type")
                HStack(spacing: 0) {
                    ButtonWithEgg(text: ["Soft", "Medium", "Hard"], selectedItem: $boiledType)
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
            
    }
}
