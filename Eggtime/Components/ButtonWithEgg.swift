//
//  ButtonWithEgg.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 29.09.2021.
//

import SwiftUI

struct ButtonWithEgg: View {
    
    var text: [String]
    @Binding var selectedItem: String
    
    var body: some View {
        ForEach(text.indices) { tag in
            ZStack {
                VStack(alignment: .leading) {
                    Text(text[tag])
                    Text("boiled").bold()
                }
                .foregroundColor(text[tag] == selectedItem ? Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)) : .primary)
                .padding(.vertical)
                .frame(width: 100, height: 120, alignment: .bottom)
                .background(RoundedRectangle(cornerRadius: 5)
                                .stroke(lineWidth: 2)
                )
                .foregroundColor(text[tag] == selectedItem ? Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)) : .secondary)
                Group {
                    if tag == 0 {
                        CookedEgg(boiledType: "soft")
                    } else if tag == 1 {
                        CookedEgg(boiledType: "medium")
                    } else {
                        CookedEgg(boiledType: "hard")
                    }
                }
                .scaleEffect(x: 0.25, y: 0.25, anchor: .center)
                .frame(width: 20, height: 20)
                .offset(y: -50)
            }
            .onTapGesture {
                withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.6)) {
                    selectedItem = text[tag]
                }
            }
            if tag != text.endIndex - 1 {
                Spacer()
            }
        }
    }
}


struct ButtonWithEgg_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithEgg(text: ["Soft"], selectedItem: .constant("Soft"))
    }
}
