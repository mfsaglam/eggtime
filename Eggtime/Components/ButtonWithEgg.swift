//
//  ButtonWithEgg.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 29.09.2021.
//

import SwiftUI

struct ButtonWithEgg: View {
    
    var text: String
    @Binding var selection: String
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(text)
                Text("boiled").bold()
            }
            .foregroundColor(text == selection ? Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)) : .primary)
            .padding(.vertical)
            .frame(width: 100, height: 120, alignment: .bottom)
            .background(RoundedRectangle(cornerRadius: 5)
                            .stroke(lineWidth: 2)
            )
            .foregroundColor(text == selection ? Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)) : .secondary)
            CookedEgg(
                boiledType: text == "Soft" ? "soft" :
                    text == "Medium" ? "medium": "hard"
            )
                .scaleEffect(x: 0.25, y: 0.25, anchor: .center)
                .frame(width: 20, height: 20)
                .offset(y: -50)
        }
        .onTapGesture {
            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.6)) {
                selection = text
            }
        }
    }
}


struct ButtonWithEgg_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithEgg(text: "Soft", selection: .constant("Soft"))
    }
}
