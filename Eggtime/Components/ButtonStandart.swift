//
//  ButtonStandart.swift
//  Eggtime
//
//  Created by Fatih Sağlam on 29.09.2021.
//

import SwiftUI

struct ButtonStandart: View {
    
    @Binding var selectedItem: String
    var text: [String]
    var horizontalPadding: CGFloat
    @Namespace var animation
    
    var body: some View {
        ForEach(text, id: \.self) { buttonText in
            HStack {
                Group {
                    if buttonText.contains(" ") {
                        HStack {
                            Text("\(buttonText.components(separatedBy: " ")[0])")
                                .font(.callout)
                            Text("\(buttonText.components(separatedBy: " ")[1])")
                                .font(.callout)
                                .bold()
                        }
                    } else {
                        Text(buttonText)
                            .font(.headline)
                    }
                }
                .padding(.horizontal, horizontalPadding)
                .padding(.vertical, 19)
                .background(RoundedRectangle(cornerRadius: 5)
                                .stroke(lineWidth: 2)
                )
                .foregroundColor(selectedItem == buttonText ? Color(#colorLiteral(red: 0.9013573527, green: 0.5734035373, blue: 0.4102450013, alpha: 1)) : Color(#colorLiteral(red: 0.8038417101, green: 0.8039775491, blue: 0.8038237691, alpha: 1)))
                .onTapGesture {
                    withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.6)) {
                        selectedItem = buttonText
                    }
                }
                if text.firstIndex(of: buttonText) != text.endIndex - 1 {
                    Spacer()
                }
            }
        }
    }
}

struct ButtonStandart_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStandart(selectedItem: .constant("Test"), text: ["Test"], horizontalPadding: 20)
    }
}
