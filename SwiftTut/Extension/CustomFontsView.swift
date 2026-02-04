//
//  CustomFontsView.swift
//  SwiftTut
//
//  Created by Syed Sohail on 22/01/26.
//

import SwiftUI

struct CustomFontsView: View {
    @State var amount: CGFloat = 0.0
    var body: some View {
        VStack {
            Text("Multi-line text with spacing. Multi-line text with spacing.Multi-line text with spacing.Multi-line text with spacing.Multi-line text with spacing.")
                .font(.fontSize20)
                .lineSpacing(10)
                .background {Color.blue.opacity(0.5)}
            Text("Multi-line text with\n spacing.")
                .font(.fontSize20.leading(.tight))
            
            Text("ffi")
                .font(.fontSize56)
//                .font(.custom("AmericanTypewriter", size: 72))
                .kerning(amount)
            Text("ffi")
                .font(.fontSize56)
//                .font(.custom("AmericanTypewriter", size: 72))
                .tracking(amount)
            
            Slider(value: $amount, in: 0...100) {
                Text("Adjust the amount of spacing")
            }
                
        }
    }
}

#Preview {
    CustomFontsView()
}
