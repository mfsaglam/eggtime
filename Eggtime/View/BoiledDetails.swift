//
//  BoiledDetails.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 24.09.2021.
//

import SwiftUI

struct BoiledDetails: View {
    
    @EnvironmentObject var vm: BoiledDetailsVM
    
    var body: some View {
        VStack {
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
                .padding(.horizontal)
                VStack(spacing: 25) {
                    HStack {
                        ThinBoldHeader(thinText: "Egg", boldText: "temperature", size: 20)
                        Spacer()
                    }
                    HStack {
                        ForEach(0 ..< vm.temperatures.count) { i in
                            ButtonStandart(selection: $vm.temperature, text: vm.temperatures[i], padding: 20)
                        }
                    }
                }
                .padding(.horizontal)
            }
            VStack(spacing: 25) {
                HStack {
                    ThinBoldHeader(thinText: "Egg", boldText: "size", size: 20)
                    Spacer()
                }
                HStack(spacing: 0) {
                    ForEach(0 ..< vm.eggSizes.count) { i in
                        Spacer()
                        ButtonStandart(selection: $vm.size, text: vm.eggSizes[i], padding: 50)
                        Spacer()
                    }
                }
            }
            .padding(.horizontal)
            VStack(spacing: 50) {
                HStack {
                    ThinBoldHeader(thinText: "Egg", boldText: "boiled type", size: 20)
                    Spacer()
                }
                HStack {
                    ForEach(vm.hardnesses.indices) { i in
                        Spacer()
                        ButtonWithEgg(text: vm.hardnesses[i], selection: $vm.hardness)
                        Spacer()
                    }
                }
            }
            .padding(.horizontal)
            
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
                NavigationLink(destination: BoilTime()) {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.white)
                        .frame(width: 60, height: 60)
                        .background(Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 7, style: .continuous))
                }
            }
            .padding(.horizontal)
            .navigationBarHidden(true)
            .onChange(of: vm.temperature) { temp in
                vm.getEstimatedBoiledTime(temperature: temp, size: vm.size, hardness: vm.hardness)
            }
            .onChange(of: vm.size) { size in
                vm.getEstimatedBoiledTime(temperature: vm.temperature, size: size, hardness: vm.hardness)
            }
            .onChange(of: vm.hardness) { hardness in
                vm.getEstimatedBoiledTime(temperature: vm.temperature, size: vm.size, hardness: hardness)
            }
            .onAppear() {
                vm.getEstimatedBoiledTime(temperature: vm.temperature, size: vm.size, hardness: vm.hardness)
            }
        }
    }
}

struct BoiledDetails_Previews: PreviewProvider {
    static var previews: some View {
        BoiledDetails()
            .environmentObject(BoiledDetailsVM())
    }
}
