//
//  CardView.swift
//  SwiftTut
//
//  Created by Syed Sohail on 04/02/26.
//

import SwiftUI

struct CommonCardView: View {
    @EnvironmentObject var themeManager: ThemeManager
    @State var bacgroundColor: Color = ThemeManager().theme.secondary6
    var body: some View {
        ZStack {
            themeManager.theme.secondary6
                .cornerRadius(20)
            Text("DEMO CARD")
                .font(.fontSize20Medium)
                .foregroundColor(themeManager.theme.primary10)
        }
        .frame(height: 250)
        .padding()
        .onAppear{
            print("\(themeManager.theme)")
        }
    }
}

#Preview {
    CommonCardView()
}
