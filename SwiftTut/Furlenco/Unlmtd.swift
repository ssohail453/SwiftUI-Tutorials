//
//  Unlmtd.swift
//  SwiftTut
//
//  Created by Syed Sohail on 02/02/26.
//

import SwiftUI

struct Unlmtd: View {
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
            }
            Text("\(StoredConstants.shared.appType.rawValue)")
            
            
            Spacer()
        }
        .onAppear {
            print("UNLMTD APPEAR")
            themeManager.setTheme(.unlmtd)
        }
    }
}

#Preview {
    Unlmtd()
}
