//
//  BoiledDetails.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 24.09.2021.
//

import SwiftUI

struct BoiledDetails: View {
    
    @ObservedObject var vm = BoiledDetailsVM()
    
    @State var temperature: String = "Room temperature"
    @State var size: String = "M"
    @State var boiledType = "Soft"
    @State var boiledTime = 0
    
    
    var body: some View {
        VStack(spacing: 20) {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    ThinBoldHeader(thinText: "Set", boldText: "boiled details", size: 26)
                    Text("Prepare eggs as you like!")
                        .font(Font.custom("Montserrat-Light", size: 17))
                        .foregroundColor(.secondary)
                }
                .offset(y: 30)
                Spacer()
                Egg()
                    .overlay(
                        EggShape()
                            .fill(Color(#colorLiteral(red: 0.6470588445663452, green: 0.4156862795352936, blue: 0.1921568661928177, alpha: 1)))
                            .scaleEffect(0.70)
                            .blur(radius: 40)
                    )
                    .scaleEffect(CGSize(width: 0.65, height: 0.65), anchor: .center)
                    .frame(width: 90, height: 210)
                    .offset(x: 40)
            }
            VStack(spacing: 25) {
                HStack {
                    ThinBoldHeader(thinText: "Egg", boldText: "temperature", size: 20)
                    Spacer()
                }
                HStack(spacing: 0) {
                    ButtonStandart(selectedItem: $temperature, text: ["Fridge temperature", "Room temperature"], horizontalPadding: 20)
                        .onTapGesture {
                            boiledTime = vm.getEstimatedBoiledTime(temperature: temperature, size: size, hardness: boiledType)
                        }
                }
                
            }
            
            VStack(spacing: 25) {
                HStack {
                    ThinBoldHeader(thinText: "Egg", boldText: "size", size: 20)
                    Spacer()
                }
                HStack(spacing: 0) {
                    ButtonStandart(selectedItem: $size, text: ["S", "M", "L"], horizontalPadding: 45)
                        .onTapGesture {
                            boiledTime = vm.getEstimatedBoiledTime(temperature: temperature, size: size, hardness: boiledType)
                        }
                }
            }
            
            VStack(spacing: 50) {
                HStack {
                    ThinBoldHeader(thinText: "Egg", boldText: "boiled type", size: 20)
                    Spacer()
                }
                HStack(spacing: 0) {
                    ButtonWithEgg(text: ["Soft", "Medium", "Hard"], selectedItem: $boiledType)
                        .onTapGesture {
                            boiledTime = vm.getEstimatedBoiledTime(temperature: temperature, size: size, hardness: boiledType)
                        }
                }
            }
            
            Spacer()
            
            HStack(alignment: .bottom) {
                VStack(alignment: .leading) {
                    Text("Estimated boiled time")
                        .font(Font.custom("Montserrat-Light", size: 17))
                    HStack(alignment: .firstTextBaseline) {
                        boiledTime.convertToMinutes()
                            .font(Font.custom("Montserrat-ExtraBold", size: 35))
                        Text("MIN")
                            .font(.footnote)
                            .bold()
                    }
                }
                Spacer()
                NavigationLink(destination: BoilTime(boiledTime: boiledTime, boiledType: boiledType)) {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.white)
                        .frame(width: 60, height: 60)
                        .background(Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 7, style: .continuous))
                }
            }
        }
        .padding(.horizontal)
        .navigationBarHidden(true)
        .onAppear {
            boiledTime = vm.getEstimatedBoiledTime(temperature: temperature, size: size, hardness: boiledType)
        }
    }
}

struct BoiledDetails_Previews: PreviewProvider {
    static var previews: some View {
        BoiledDetails()
            
    }
}
