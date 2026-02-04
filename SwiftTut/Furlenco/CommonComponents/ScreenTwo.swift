//
//  ScreenTwo.swift
//  SwiftTut
//
//  Created by Syed Sohail on 04/02/26.
//

import SwiftUI

struct ScreenTwo: View {
    @EnvironmentObject var themeManager: ThemeManager
    var body: some View {
        ZStack {
            VStack {
                CommonCardView()
                CommonCardView()
                NavigationLink(destination: ScreenThree()) {
                    Text("Go to Screen Three")
                        .foregroundStyle(themeManager.theme.primary9)
                }
            }
            .navigationTitle("Screen Two")
        }
    }
}

#Preview {
    ScreenTwo()
}
