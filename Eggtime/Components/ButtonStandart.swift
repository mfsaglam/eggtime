//
//  ButtonStandart.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 29.09.2021.
//

import SwiftUI

struct ButtonStandart: View {
    
    @Binding var selectedItem: String
    var text: String
    var padding: CGFloat
    @Namespace var animation
    
    var body: some View {
        Group {
            if text.contains(" ") {
                HStack {
                    Text("\(text.components(separatedBy: " ")[0])")
                        .font(.callout)
                    Text("\(text.components(separatedBy: " ")[1])")
                        .font(.callout)
                        .bold()
                }
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

            } else {
                Text(text)
                    .font(.headline)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            }
        }
        
        .padding(.vertical, 19)
        .padding(.horizontal, padding)
        .background(RoundedRectangle(cornerRadius: 5)
//                        .stroke(lineWidth: 2)
        )
        .foregroundColor(selectedItem == text ? Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)) : Color(#colorLiteral(red: 0.8038417101, green: 0.8039775491, blue: 0.8038237691, alpha: 1)))
        .onTapGesture {
            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.6)) {
                selectedItem = text
            }
        }
    }
}

struct ButtonStandart_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStandart(selectedItem: .constant("Test"), text: "Test", padding: 10)
    }
}
