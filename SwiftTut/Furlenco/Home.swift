//
//  Home.swift
//  SwiftTut
//
//  Created by Syed Sohail on 02/02/26.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var themeManager: ThemeManager
    var body: some View {
        ZStack {
            themeManager.theme.secondary4.ignoresSafeArea()
            VStack {
                Text("Home")
                    
                Text("Home")
                    .font(.fontSize32Medium)
                    .padding()
                    .background(Color.Buy5)
                
                Text("\(StoredConstants.shared.appType.rawValue)")
                Spacer()
            }
        }
    }
}

#Preview {
    Home()
}
