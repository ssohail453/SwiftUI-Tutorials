//
//  ScreenThree.swift
//  SwiftTut
//
//  Created by Syed Sohail on 04/02/26.
//

import SwiftUI

struct ScreenThree: View {
    @EnvironmentObject var themeManager: ThemeManager
    var body: some View {
        ZStack {
            VStack {
                CommonCardView()
                CommonCardView()
                NavigationLink(destination: ScreenFour()) {
                    Text("Go to Screen Four")
                        .foregroundStyle(themeManager.theme.primary9)
                }
            }
            .navigationTitle("Screen Three")
        }
    }
}

#Preview {
    ScreenThree()
}

struct ScreenFour: View {
    @EnvironmentObject var themeManager: ThemeManager
    var body: some View {
        ZStack {
            VStack {
                CommonCardView(bacgroundColor: themeManager.theme.secondary4)
                CommonCardView(bacgroundColor: themeManager.theme.secondary4)
            }
            .navigationTitle("Screen Four")
        }
    }
}
