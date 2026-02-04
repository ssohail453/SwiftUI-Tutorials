//
//  ContentView.swift
//  SwiftTut
//
//  Created by Syed Sohail on 17/12/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var themeManager: ThemeManager
    
    @State var selectedTab: Tab = .Home
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                VStack {
                    TabView(selection: $selectedTab) {
                        Profile()
                            .tabItem {
                                Label("Profile", systemImage: "list.dash")
                            }
                            .tag(Tab.Profile)
                        Buy()
                            .tabItem {
                                Label("Buy", systemImage: "square.and.pencil")
                            }
                            .tag(Tab.Buy)
                        Home()
                            .tabItem {
                                Label("Home", systemImage: "newspaper")
                            }
                            .tag(Tab.Home)
                        Rent()
                            .tabItem {
                                Label("Rent", systemImage: "pencil")
                            }
                            .tag(Tab.Rent)
                        Unlmtd()
                            .tabItem {
                                Label("Unlmtd", systemImage: "star")
                            }
                            .tag(Tab.Unlmtd)
                    }
                    
                }
            }
        } else {
            // Fallback on earlier versions
        }
        
    }
}

#Preview {
    ContentView()
}

enum Tab{
    case Profile, Buy, Home, Rent, Unlmtd
}
