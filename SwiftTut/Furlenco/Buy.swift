//
//  Buy.swift
//  SwiftTut
//
//  Created by Syed Sohail on 02/02/26.
//

import SwiftUI

struct Buy: View {
    @State var theme = ColorTheme()
    @EnvironmentObject var themeManager: ThemeManager
    var body: some View {
        VStack {
            Text("Furlenco")
                .foregroundStyle(Color.secondaryColor)
            Text("Secondary Color")
                .font(.fontSize32Medium)
                .padding()
                .background(themeManager.theme.secondary3)
            CommonCardView()
            NavigationLink(destination: ScreenTwo()) {
                Text("Go to Screen Two")
                    .font(.fontSize16Medium)
                    .foregroundStyle(themeManager.theme.primary8)
            }
            
            Text("\(StoredConstants.shared.appType.rawValue)")
            
            
            Spacer()
        }
        .onAppear() {
            print("BUY APPEAR")
            StoredConstants.shared.appType = .Buy
            themeManager.setTheme(.buy)
            
        }
        .onDisappear {
            print("BUY DISAPPEAR")
        }
    }
}

#Preview {
    Buy()
}
