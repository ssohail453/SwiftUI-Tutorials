//
//  SingletonClass.swift
//  SwiftTut
//
//  Created by Syed Sohail on 03/02/26.
//

import Foundation
import SwiftUI
import UIKit

enum AppType: Int {
    case Rent   = 1
    case Buy    = 2
    case Unlmtd = 3
}

enum ThemeType {
    case rent
    case buy
    case unlmtd
}

struct AppTheme {
    let secondary1: Color
    let secondary2, secondary3, secondary4, secondary5: Color
    let secondary6, secondary7, secondary8, secondary9, secondary10: Color
    
    let primary1, primary2, primary3, primary4, primary5: Color
    let primary6, primary7, primary8, primary9, primary10: Color
}

extension AppTheme {

    static let rent = AppTheme(
        secondary1: Color(AppColors.RENT_1.rawValue),
        secondary2: Color(AppColors.RENT_2.rawValue),
        secondary3: Color(AppColors.RENT_3.rawValue),
        secondary4: Color(AppColors.RENT_4.rawValue),
        secondary5: Color(AppColors.RENT_5.rawValue),
        secondary6: Color(AppColors.RENT_6.rawValue),
        secondary7: Color(AppColors.RENT_7.rawValue),
        secondary8: Color(AppColors.RENT_8.rawValue),
        secondary9: Color(AppColors.RENT_9.rawValue),
        secondary10: Color(AppColors.RENT_10.rawValue),
        
        primary1 : Color(AppColors.PRIMARY_1.rawValue),
        primary2 : Color(AppColors.PRIMARY_2.rawValue),
        primary3 : Color(AppColors.PRIMARY_3.rawValue),
        primary4 : Color(AppColors.PRIMARY_4.rawValue),
        primary5 : Color(AppColors.PRIMARY_5.rawValue),
        primary6 : Color(AppColors.PRIMARY_6.rawValue),
        primary7 : Color(AppColors.PRIMARY_7.rawValue),
        primary8 : Color(AppColors.PRIMARY_8.rawValue),
        primary9 : Color(AppColors.PRIMARY_9.rawValue),
        primary10: Color(AppColors.PRIMARY_10.rawValue)
        
        
        
        
    )

    static let buy = AppTheme(
        secondary1: Color(AppColors.BUY_1.rawValue),
        secondary2: Color(AppColors.BUY_2.rawValue),
        secondary3: Color(AppColors.BUY_3.rawValue),
        secondary4: Color(AppColors.BUY_4.rawValue),
        secondary5: Color(AppColors.BUY_5.rawValue),
        secondary6: Color(AppColors.BUY_6.rawValue),
        secondary7: Color(AppColors.BUY_7.rawValue),
        secondary8: Color(AppColors.BUY_8.rawValue),
        secondary9: Color(AppColors.BUY_9.rawValue),
        secondary10: Color(AppColors.BUY_10.rawValue),
        
        primary1 : Color(AppColors.PRIMARY_1.rawValue),
        primary2 : Color(AppColors.PRIMARY_2.rawValue),
        primary3 : Color(AppColors.PRIMARY_3.rawValue),
        primary4 : Color(AppColors.PRIMARY_4.rawValue),
        primary5 : Color(AppColors.PRIMARY_5.rawValue),
        primary6 : Color(AppColors.PRIMARY_6.rawValue),
        primary7 : Color(AppColors.PRIMARY_7.rawValue),
        primary8 : Color(AppColors.PRIMARY_8.rawValue),
        primary9 : Color(AppColors.PRIMARY_9.rawValue),
        primary10: Color(AppColors.PRIMARY_10.rawValue)
    )

    static let unlmtd = AppTheme(
        secondary1: Color(AppColors.UNLMTD_1.rawValue),
        secondary2: Color(AppColors.UNLMTD_2.rawValue),
        secondary3: Color(AppColors.UNLMTD_3.rawValue),
        secondary4: Color(AppColors.UNLMTD_4.rawValue),
        secondary5: Color(AppColors.UNLMTD_5.rawValue),
        secondary6: Color(AppColors.UNLMTD_6.rawValue),
        secondary7: Color(AppColors.UNLMTD_7.rawValue),
        secondary8: Color(AppColors.UNLMTD_8.rawValue),
        secondary9: Color(AppColors.UNLMTD_9.rawValue),
        secondary10: Color(AppColors.UNLMTD_10.rawValue),
        
        primary1 : Color(AppColors.UNLMTD_1.rawValue),
        primary2 : Color(AppColors.UNLMTD_2.rawValue),
        primary3 : Color(AppColors.UNLMTD_3.rawValue),
        primary4 : Color(AppColors.UNLMTD_4.rawValue),
        primary5 : Color(AppColors.UNLMTD_5.rawValue),
        primary6 : Color(AppColors.UNLMTD_6.rawValue),
        primary7 : Color(AppColors.UNLMTD_7.rawValue),
        primary8 : Color(AppColors.UNLMTD_8.rawValue),
        primary9 : Color(AppColors.UNLMTD_9.rawValue),
        primary10: Color(AppColors.UNLMTD_10.rawValue)
    )
}


class StoredConstants: Observable {
    var appType: AppType = .Buy
    static var CART_ID: Int = 0
    
    static let shared = StoredConstants()
    
    init(){}
    
    func setRent() {
        self.appType = .Rent
    }
    
    func setBuy() {
        self.appType = .Buy
    }
    
    func setUnlmtd() {
        self.appType = .Unlmtd
    }
}
