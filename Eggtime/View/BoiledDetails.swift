//
//  BoiledDetails.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 24.09.2021.
//

import SwiftUI

struct BoiledDetails: View {
    
    @StateObject var vm = BoiledDetailsVM()
    
    @AppStorage(wrappedValue: "Room temperature", "temperture") var temperature
    @AppStorage(wrappedValue: "M", "size") var size
    @AppStorage(wrappedValue: "Soft", "boiledType") var boiledType
    
//    @State var temperature: String = "Room temperature"
//    @State var size: String = "M"
//    @State var boiledType = "Soft"
    
    
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
                HStack {
                    ButtonStandart(selectedItem: $temperature, text: "Fridge temperature", padding: 20)
                    Spacer()
                    ButtonStandart(selectedItem: $temperature, text: "Room temperature", padding: 20)
                }
                
            }
            
            VStack(spacing: 25) {
                HStack {
                    ThinBoldHeader(thinText: "Egg", boldText: "size", size: 20)
                    Spacer()
                }
                HStack(spacing: 0) {
                    ButtonStandart(selectedItem: $size, text: "S", padding: 50)
                    Spacer()
                    ButtonStandart(selectedItem: $size, text: "M", padding: 50)
                    Spacer()
                    ButtonStandart(selectedItem: $size, text: "L", padding: 50)
                }
            }
            
            VStack(spacing: 50) {
                HStack {
                    ThinBoldHeader(thinText: "Egg", boldText: "boiled type", size: 20)
                    Spacer()
                }
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
                        
                        Text("\(vm.estimatedBoiledTime.timeStyle())")
                            .font(Font.custom("Montserrat-ExtraBold", size: 35))
                        Text("MIN")
                            .font(.footnote)
                            .bold()
                    }
                }
                Spacer()
                NavigationLink(destination: BoilTime(boiledTime: vm.estimatedBoiledTime, boiledType: boiledType)) {
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
        .onChange(of: temperature) { temp in
            vm.getEstimatedBoiledTime(temperature: temp, size: size, hardness: boiledType)
        }
        .onChange(of: size) { value in
            vm.getEstimatedBoiledTime(temperature: temperature, size: value, hardness: boiledType)
        }
        .onChange(of: boiledType) { hardness in
            vm.getEstimatedBoiledTime(temperature: temperature, size: size, hardness: hardness)
        }
        .onAppear() {
            vm.getEstimatedBoiledTime(temperature: temperature, size: size, hardness: boiledType)
        }
    }
}

struct BoiledDetails_Previews: PreviewProvider {
    static var previews: some View {
        BoiledDetails()
            
    }
}

extension Int {
    func timeStyle() -> String {
        let minutes = self / 60 % 60
        let seconds = self % 60
        return String(format:"%02d:%02d", minutes, seconds)
    }
}
