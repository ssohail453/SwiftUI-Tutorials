//
//  Profile.swift
//  SwiftTut
//
//  Created by Syed Sohail on 02/02/26.
//

import SwiftUI

struct Profile: View {
    @EnvironmentObject var themeManager: ThemeManager
    var body: some View {
        ZStack {
            themeManager.theme.secondary4.ignoresSafeArea()
            VStack {
                Text("Profile")
                    
                Text("Profile")
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
    Profile()
}
