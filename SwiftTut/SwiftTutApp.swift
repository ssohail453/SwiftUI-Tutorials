//
//  SwiftTutApp.swift
//  SwiftTut
//
//  Created by Syed Sohail on 17/12/25.
//

import SwiftUI

@main
struct SwiftTutApp: App {
    @StateObject var themeManager = ThemeManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(themeManager)
//            NetworkCall()
        }
    }
}
