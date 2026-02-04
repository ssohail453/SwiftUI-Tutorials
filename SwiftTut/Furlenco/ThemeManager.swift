//
//  ThemeManager.swift
//  SwiftTut
//
//  Created by Syed Sohail on 04/02/26.
//
import SwiftUI
import Combine

final class ThemeManager: ObservableObject {

    @Published private(set) var theme: AppTheme = .rent

    func setTheme(_ type: ThemeType) {
        switch type {
        case .rent:
            theme = .rent
        case .buy:
            theme = .buy
        case .unlmtd:
            theme = .unlmtd
        }
    }
}
