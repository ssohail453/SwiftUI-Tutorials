//
//  AppFont.swift
//  SwiftTut
//
//  Created by Syed Sohail on 22/12/25.
//

//
//  AppFonts.swift
//  Furlenco
//
//  Created by Furlenco on 11/10/22.
//

import Foundation
import UIKit
import SwiftUI

// MARK: - Accessibility Helper
fileprivate extension UIFont {
    static func scaledFont(name: String, size: CGFloat) -> UIFont {
//        return UIFont(name: name, size: size) ?? UIFont.systemFont(ofSize: size)
        guard !name.isEmpty else { return UIFont.systemFont(ofSize: size) }
        let contentSizeCategory: UIContentSizeCategory
        if Thread.isMainThread {
            contentSizeCategory = UIApplication.shared.preferredContentSizeCategory
        } else {
            contentSizeCategory = .large
        }
        let scaledSize = size * contentSizeCategory.multiplier
        return UIFont(name: name, size: scaledSize) ?? UIFont.systemFont(ofSize: size)
    }
}

fileprivate extension UIContentSizeCategory {
    var multiplier: CGFloat {
        switch self {
        case .extraSmall: return 0.823
        case .small: return 0.882
        case .medium: return 0.941
        case .large: return 1.0
        case .extraLarge: return 1.118
        case .extraExtraLarge: return 1.235
        case .extraExtraExtraLarge: return 1.353
        case .accessibilityMedium: return 1.769
        case .accessibilityLarge: return 1.964
        case .accessibilityExtraLarge: return 2.359
        case .accessibilityExtraExtraLarge: return 2.753
        case .accessibilityExtraExtraExtraLarge: return 3.147
        default: return 1.0
        }
    }
}

enum FontTypes {
    case ReclineRegular40
    case ReclineMedium40
    case ReclineSemiBold40
    case ReclineRegular36
    case ReclineMedium36
    case ReclineSemiBold36
    case ReclineRegular32
    case ReclineMedium32
    case ReclineSemiBold32
    case ReclineRegular24
    case ReclineMedium24
    case ReclineSemiBold24
    case ReclineRegular21
    case ReclineMedium21
    case ReclineSemiBold21
    case ReclineRegular18
    case ReclineMedium18
    case ReclineSemiBold18
    case ReclineRegular16
    case ReclineMedium16
    case ReclineSemiBold16
    case ReclineRegular14
    case ReclineMedium14
    case ReclineSemiBold14
    
    case WorkSansRegular36
    case WorkSansMedium36
    case WorkSansSemiBold36
    case WorkSansRegular24
    case WorkSansMedium24
    case WorkSansSemiBold24
    case WorkSansRegular21
    case WorkSansMedium21
    case WorkSansSemiBold21
    case WorkSansRegular18
    case WorkSansMedium18
    case WorkSansSemiBold18
    case WorkSansRegular16
    case WorkSansMedium16
    case WorkSansSemiBold16
    case WorkSansRegular14
    case WorkSansMedium14
    case WorkSansSemiBold14
    case WorkSansRegular12
    case WorkSansMedium12
    case WorkSansSemiBold12
    case WorkSansRegular10
    case WorkSansMedium10
    case WorkSansSemiBold10
    case WorkSansSemiBold8
    
    case MontSerratBold32
    case MontSerratBold36
    case MontSerratMedium36
    case MontSerratRegular36
    case MontSerratBold24
    case MontSerratMedium24
    case MontSerratRegular24
    case MontSerratBold18
    case MontSerratMedium18
    case MontSerratRegular18
    case MontSerratBold16
    case MontSerratMedium16
    case MontSerratRegular16
    case MontSerratBold14
    case MontSerratMedium14
    case MontSerratRegular14
    case MontSerratBold12
    case MontSerratMedium12
    case MontSerratRegular12
    case MontSerratBold10
    case MontSerratMedium10
    case MontSerratRegular10
    
    case GrandslangRoman40
    case GrandSlangBSide24
    
    
    var fontType: UIFont {
        switch self {
        case .ReclineRegular40:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_REGULAR, size: 40)
        case .ReclineMedium40:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_MEDIUM, size: 40)
        case .ReclineSemiBold40:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_SEMIBOLD, size: 40)
        
        case .ReclineRegular36:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_REGULAR, size: 36)
        case .ReclineMedium36:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_MEDIUM, size: 36)
        case .ReclineSemiBold36:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_SEMIBOLD, size: 36)
            
        case .ReclineRegular32:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_REGULAR, size: 32)
        case .ReclineMedium32:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_MEDIUM, size: 32)
        case .ReclineSemiBold32:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_SEMIBOLD, size: 32)
            
        case .ReclineRegular24:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_REGULAR, size: 24)
        case .ReclineMedium24:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_MEDIUM, size: 24)
        case .ReclineSemiBold24:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_SEMIBOLD, size: 24)
        case .ReclineRegular21:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_REGULAR, size: 21)
        case .ReclineMedium21:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_MEDIUM, size: 21)
        case .ReclineSemiBold21:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_SEMIBOLD, size: 21)
        case .ReclineRegular18:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_REGULAR, size: 18)
        case .ReclineMedium18:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_MEDIUM, size: 18)
        case .ReclineSemiBold18:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_SEMIBOLD, size: 18)
        case .ReclineRegular16:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_REGULAR, size: 16)
        case .ReclineMedium16:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_MEDIUM, size: 16)
        case .ReclineSemiBold16:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_SEMIBOLD, size: 16)
        case .ReclineRegular14:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_REGULAR, size: 14)
        case .ReclineMedium14:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_MEDIUM, size: 14)
        case .ReclineSemiBold14:
            return UIFont.scaledFont(name: FurlencoConstant.RECLINE_SEMIBOLD, size: 14)
            
        case .WorkSansRegular36:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_REGULAR, size: 36)
        case .WorkSansMedium36:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_MEDIUM, size: 36)
        case .WorkSansSemiBold36:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_SEMIBOLD, size: 36)
        case .WorkSansRegular24:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_REGULAR, size: 24)
        case .WorkSansMedium24:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_MEDIUM, size: 24)
        case .WorkSansSemiBold24:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_SEMIBOLD, size: 24)
        case .WorkSansRegular21:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_REGULAR, size: 21)
        case .WorkSansMedium21:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_MEDIUM, size: 21)
        case .WorkSansSemiBold21:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_SEMIBOLD, size: 21)
        case .WorkSansRegular18:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_REGULAR, size: 18)
        case .WorkSansMedium18:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_MEDIUM, size: 18)
        case .WorkSansSemiBold18:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_SEMIBOLD, size: 18)
        case .WorkSansRegular16:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_REGULAR, size: 16)
        case .WorkSansMedium16:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_MEDIUM, size: 16)
        case .WorkSansSemiBold16:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_SEMIBOLD, size: 16)
        case .WorkSansRegular14:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_REGULAR, size: 14)
        case .WorkSansMedium14:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_MEDIUM, size: 14)
        case .WorkSansSemiBold14:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_SEMIBOLD, size: 14)
        case .WorkSansRegular12:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_REGULAR, size: 12)
        case .WorkSansMedium12:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_MEDIUM, size: 12)
        case .WorkSansSemiBold12:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_SEMIBOLD, size: 12)
        case .WorkSansRegular10:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_REGULAR, size: 10)
        case .WorkSansMedium10:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_MEDIUM, size: 10)
        case .WorkSansSemiBold10:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_SEMIBOLD, size: 10)
        case .WorkSansSemiBold8:
            return UIFont.scaledFont(name: FurlencoConstant.WORKSANS_SEMIBOLD, size: 8)
         
        case .MontSerratBold32:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_BOLD, size: 32)
        case .MontSerratBold36:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_BOLD, size: 36)
        case .MontSerratMedium36:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_MEDIUM, size: 36)
        case .MontSerratRegular36:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_REGULAR, size: 36)
        case .MontSerratBold24:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_BOLD, size: 24)
        case .MontSerratMedium24:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_MEDIUM, size: 24)
        case .MontSerratRegular24:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_REGULAR, size: 24)
        case .MontSerratBold18:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_BOLD, size: 18)
        case .MontSerratMedium18:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_MEDIUM, size: 18)
        case .MontSerratRegular18:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_REGULAR, size: 18)
        case .MontSerratBold16:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_BOLD, size: 16)
        case .MontSerratMedium16:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_MEDIUM, size: 16)
        case .MontSerratRegular16:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_REGULAR, size: 16)
        case .MontSerratBold14:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_BOLD, size: 14)
        case .MontSerratMedium14:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_MEDIUM, size: 14)
        case .MontSerratRegular14:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_REGULAR, size: 14)
        case .MontSerratBold12:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_BOLD, size: 12)
        case .MontSerratMedium12:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_MEDIUM, size: 12)
        case .MontSerratRegular12:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_REGULAR, size: 12)
        case .MontSerratBold10:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_BOLD, size: 10)
        case .MontSerratMedium10:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_MEDIUM, size: 10)
        case .MontSerratRegular10:
            return UIFont.scaledFont(name: FurlencoConstant.MONTSERRAT_REGULAR, size: 10)
            
        case .GrandslangRoman40:
            return UIFont.scaledFont(name: FurlencoConstant.GRANDSLANG_ROMAN, size: 40)
        case .GrandSlangBSide24:
            return UIFont.scaledFont(name: FurlencoConstant.GRANDSLANG_B_SIDE, size: 24)
        }
    }
    
}

enum AppFonts: String {
    case H3ARegular = "H3A-Regular"
    case H3AMedium = "H3A-Medium"
    case H3ASemiBold = "H3A-SemiBold"
    
    case H5Regular = "H5-Regular"
    case H5Medium = "H5-Medium"
    case H5SemiBold = "H5-SemiBold"
    case H5ARegular = "H5A-Regular"
    case H5AMedium = "H5A-Medium"
    case H5ASemiBold = "H5A-SemiBold"
    
    case H6ARegular = "H6A-Regular"
    case H6AMedium = "H6A-Medium"
    case H6ASemiBold = "H6A-SemiBold"
    
    case H9Regular = "H9-Regular"
    case H9Medium = "H9-Medium"
    case H9SemiBold = "H9-SemiBold"
    case H9ARegular = "H9A-Regular"
    case H9AMedium = "H9A-Medium"
    case H9ASemiBold = "H9A-SemiBold"
    
    case H10Regular = "H10-Regular"
    case H10Medium = "H10-Medium"
    case H10SemiBold = "H10-SemiBold"
    case H10ARegular = "H10A-Regular"
    case H10AMedium = "H10A-Medium"
    case H10ASemiBold = "H10A-SemiBold"
    
    case H11Regular = "H11-Regular"
    case H11Medium = "H11-Medium"
    case H11SemiBold = "H11-SemiBold"
    case H11ARegular = "H11A-Regular"
    case H11AMedium = "H11A-Medium"
    case H11ASemiBold = "H11A-SemiBold"
    
    case H14Regular = "H14-Regular"
    case H14Medium = "H14-Medium"
    case H14SemiBold = "H14-SemiBold"
    
    case H14ARegular = "H14A-Regular"
    case H14AMedium = "H14A-Medium"
    case H14ASemiBold = "H14A-SemiBold"
    
    case PRegular = "P-Regular"
    case PMedium = "P-Medium"
    case PSemiBold = "P-SemiBold"
    case PARegular = "PA-Regular"
    case PAMedium = "PA-Medium"
    case PASemiBold = "PA-SemiBold"
    
    case SmallRegular = "Small-Regular"
    case SmallMedium = "Small-Medium"
    case SmallSemiBold = "Small-SemiBold"
    
    case TinyRegular = "Tiny-Regular"
    case TinyMedium = "Tiny-Medium"
    case TinySemiBold = "Tiny-SemiBold"
    
    case MinSemiBold = "Min-SemiBold"
    
    
    case UNLMTDHeadingBig
    
    case UNLMTDHeadingBold
    case UNLMTDHeadingMedium
    case UNLMTDHeadingRegular
    
    case UNLMTDHeading1Bold
    case UNLMTDHeading1Medium
    case UNLMTDHeading1Regular
    
    case UNLMTDHeading2Bold
    case UNLMTDHeading2Medium
    case UNLMTDHeading2Regular
    
    case UNLMTDHeading3Bold
    case UNLMTDHeading3Medium
    case UNLMTDHeading3Regular
    
    case UNLMTDParagraphBold
    case UNLMTDParagraphMedium
    case UNLMTDParagraphRegular
    
    case UNLMTDSmallBold
    case UNLMTDSmallMedium
    case UNLMTDSmallRegular
    
    case UNLMTDTinyBold
    case UNLMTDTinyMedium
    case UNLMTDTinyRegular
    
    case UNLMTDLogo
    case UNLMTDLogoSmall
    
    var fontStyle: Font {
        switch self {
        case .H3ARegular:
            return Font(FontTypes.ReclineRegular40.fontType)
        case .H3AMedium:
            return Font(FontTypes.ReclineMedium40.fontType)
        case .H3ASemiBold:
            return Font(FontTypes.ReclineSemiBold40.fontType)
            
            
        case .H5Regular:
            return Font(FontTypes.WorkSansRegular36.fontType)
        case .H5Medium:
            return Font(FontTypes.WorkSansMedium36.fontType)
        case .H5SemiBold:
            return Font(FontTypes.WorkSansSemiBold36.fontType)
        case .H5ARegular:
            return Font(FontTypes.ReclineRegular36.fontType)
        case .H5AMedium:
            return Font(FontTypes.ReclineMedium36.fontType)
        case .H5ASemiBold:
            return Font(FontTypes.ReclineSemiBold36.fontType)
            
        case .H6ARegular:
            return Font(FontTypes.ReclineRegular32.fontType)
        case .H6AMedium:
            return Font(FontTypes.ReclineMedium32.fontType)
        case .H6ASemiBold:
            return Font(FontTypes.ReclineSemiBold32.fontType)
            
            
        case .H9Regular:
            return Font(FontTypes.WorkSansRegular24.fontType)
        case .H9Medium:
            return Font(FontTypes.WorkSansMedium24.fontType)
        case .H9SemiBold:
            return Font(FontTypes.WorkSansSemiBold24.fontType)
        case .H9ARegular:
            return Font(FontTypes.ReclineRegular24.fontType)
        case .H9AMedium:
            return Font(FontTypes.ReclineMedium24.fontType)
        case .H9ASemiBold:
            return Font(FontTypes.ReclineSemiBold24.fontType)
        
        case .H10Regular:
            return Font(FontTypes.WorkSansRegular21.fontType)
        case .H10Medium:
            return Font(FontTypes.WorkSansMedium21.fontType)
        case .H10SemiBold:
            return Font(FontTypes.WorkSansSemiBold21.fontType)
        case .H10ARegular:
            return Font(FontTypes.ReclineRegular21.fontType)
        case .H10AMedium:
            return Font(FontTypes.ReclineMedium21.fontType)
        case .H10ASemiBold:
            return Font(FontTypes.ReclineSemiBold21.fontType)
        
        case .H11Regular:
            return Font(FontTypes.WorkSansRegular18.fontType)
        case .H11Medium:
            return Font(FontTypes.WorkSansMedium18.fontType)
        case .H11SemiBold:
            return Font(FontTypes.WorkSansSemiBold18.fontType)
        case .H11ARegular:
            return Font(FontTypes.ReclineRegular18.fontType)
        case .H11AMedium:
            return Font(FontTypes.ReclineMedium18.fontType)
        case .H11ASemiBold:
            return Font(FontTypes.ReclineSemiBold18.fontType)
        
        case .H14Regular:
            return Font(FontTypes.WorkSansRegular16.fontType)
        case .H14Medium:
            return Font(FontTypes.WorkSansMedium16.fontType)
        case .H14SemiBold:
            return Font(FontTypes.WorkSansSemiBold16.fontType)
        case .H14ARegular:
            return Font(FontTypes.ReclineRegular16.fontType)
        case .H14AMedium:
            return Font(FontTypes.ReclineMedium16.fontType)
        case .H14ASemiBold:
            return Font(FontTypes.ReclineSemiBold16.fontType)
        
        case .PRegular:
            return Font(FontTypes.WorkSansRegular14.fontType)
        case .PMedium:
            return Font(FontTypes.WorkSansMedium14.fontType)
        case .PSemiBold:
            return Font(FontTypes.WorkSansSemiBold14.fontType)
        case .PARegular:
            return Font(FontTypes.ReclineRegular14.fontType)
        case .PAMedium:
            return Font(FontTypes.ReclineMedium14.fontType)
        case .PASemiBold:
            return Font(FontTypes.ReclineSemiBold14.fontType)
        
        case .SmallRegular:
            return Font(FontTypes.WorkSansRegular12.fontType)
        case .SmallMedium:
            return Font(FontTypes.WorkSansMedium12.fontType)
        case .SmallSemiBold:
            return Font(FontTypes.WorkSansSemiBold12.fontType)
        
        case .TinyRegular:
            return Font(FontTypes.WorkSansRegular10.fontType)
        case .TinyMedium:
            return Font(FontTypes.WorkSansMedium10.fontType)
        case .TinySemiBold:
            return Font(FontTypes.WorkSansSemiBold10.fontType)
        case .MinSemiBold:
            return Font(FontTypes.WorkSansSemiBold8.fontType)
            
        case .UNLMTDHeadingBig:
            return Font(FontTypes.MontSerratBold32.fontType)
        case .UNLMTDHeadingBold:
            return Font(FontTypes.MontSerratBold36.fontType)
        case .UNLMTDHeadingMedium:
            return Font(FontTypes.MontSerratMedium36.fontType)
        case .UNLMTDHeadingRegular:
            return Font(FontTypes.MontSerratRegular36.fontType)
            
        case .UNLMTDHeading1Bold:
            return Font(FontTypes.MontSerratBold24.fontType)
        case .UNLMTDHeading1Medium:
            return Font(FontTypes.MontSerratMedium24.fontType)
        case .UNLMTDHeading1Regular:
            return Font(FontTypes.MontSerratRegular24.fontType)
            
        case .UNLMTDHeading2Bold:
            return Font(FontTypes.MontSerratBold18.fontType)
        case .UNLMTDHeading2Medium:
            return Font(FontTypes.MontSerratMedium18.fontType)
        case .UNLMTDHeading2Regular:
            return Font(FontTypes.MontSerratRegular18.fontType)
            
        case .UNLMTDHeading3Bold:
            return Font(FontTypes.MontSerratBold16.fontType)
        case .UNLMTDHeading3Medium:
            return Font(FontTypes.MontSerratMedium16.fontType)
        case .UNLMTDHeading3Regular:
            return Font(FontTypes.MontSerratRegular16.fontType)
            
        case .UNLMTDParagraphBold:
            return Font(FontTypes.MontSerratBold14.fontType)
        case .UNLMTDParagraphMedium:
            return Font(FontTypes.MontSerratMedium14.fontType)
        case .UNLMTDParagraphRegular:
            return Font(FontTypes.MontSerratRegular14.fontType)
            
        case .UNLMTDSmallBold:
            return Font(FontTypes.MontSerratBold12.fontType)
        case .UNLMTDSmallMedium:
            return Font(FontTypes.MontSerratMedium12.fontType)
        case .UNLMTDSmallRegular:
            return Font(FontTypes.MontSerratRegular12.fontType)
            
        case .UNLMTDTinyBold:
            return Font(FontTypes.MontSerratBold10.fontType)
        case .UNLMTDTinyMedium:
            return Font(FontTypes.MontSerratMedium10.fontType)
        case .UNLMTDTinyRegular:
            return Font(FontTypes.MontSerratRegular10.fontType)
            
        case .UNLMTDLogo:
            return Font(FontTypes.GrandslangRoman40.fontType)
        case .UNLMTDLogoSmall:
            return Font(FontTypes.GrandSlangBSide24.fontType)
        }
    }
}

class FurlencoConstant {

    // MARK: - Test Values
    static var CI_BASE_URL: String = "https://cia.furlenco.com/api/v1/cms/"
    static let phoneRegex: String = "[6789][0-9]{9}"
    static let nameRegex: String = "[a-zA-Z\\s][a-zA-Z\\s\\.]*"
    static let emailRegex: String = "[A-Z0-9a-z._%+\\-&$#]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    static let upiRegex: String = "[a-zA-Z0-9.-_]{2,256}@[a-zA-Z]{2,64}"
    static let MOENGAGE_APP_ID: String = "AGTFRL1MHSJZ8CUPLX044546"
    static let MOENGAGE_APPGROUP_ID: String = "group.com.furlenco.mobile.MoEngage"
    static let SINGULAR_SDK_KEY: String = "furlenco_cbe9b717"
    static let SINGULAR_SDK_SECRET_KEY: String = "6316c2370425f375415a930abe5bc857"
    static let NO_INDEX = -1
    static let NO_FLOOR = -100

    static let APPSTORE_LINK = "https://itunes.apple.com/uk/app/furlenco/id1134919232?ls=1&mt=8"
    
    // MARK: - App Font Names
    static let RECLINE_REGULAR: String      = "Recline-Regular"
    static let RECLINE_MEDIUM: String       = "Recline-Medium"
    static let RECLINE_SEMIBOLD: String     = "Recline-SemiBold"
    static let WORKSANS_REGULAR: String     = "WorkSans-Regular"
    static let WORKSANS_MEDIUM: String      = "WorkSans-Medium"
    static let WORKSANS_SEMIBOLD: String    = "WorkSans-SemiBold"
    static let MONTSERRAT_REGULAR: String   = "Montserrat-Regular"
    static let MONTSERRAT_MEDIUM: String    = "Montserrat-Medium"
    static let MONTSERRAT_BOLD: String      = "Montserrat-Bold"
    static let GRANDSLANG_ROMAN: String     = "GrandSlang-Roman"
    static let GRANDSLANG_B_SIDE: String    = "GrandSlang-B-Side"
    static let FONT_REGULAR: String         = "Avenir-Roman"
    static let FONT_MEDIUM: String          = "Avenir-Medium"
    static let FONT_HEAVY: String           = "Avenir-Heavy"
    
    enum Events: String {
        case CART = "cart"
        case ORDER_ID = "orderId"
        case BANK_LIST = "bank_list"
        case TAB_CHANGE = "tab_change"
        case DELIVERY_ADDRESS = "DeliveryAddress"
        case GOOGLE_LOGIN = "google_login"
        case CART_ADD = "cart_add"
        case PUSH_TO_SEARCH = "pushToSearch"
        case PUSH_TO_LOGIN = "pushToLogin"
        case PUSH_TO_PDP = "pushToPDP"
        case PUSH_TO_TRACK_REFUND = "pushToTrackRefund"
        case PUSH_TO_TRACK_REFUNDTABBAR = "pushToTrackRefundTABBAR"
        case PUSH_TO_PACKAGE = "pushToPackage"
        case POP_VIEW_CONTROLLER = "popViewController"
        case CONFIG_RECEIVED = "config_received"
        case PUSH_TO_INVOICE = "pushToInvoice"
        case PUSH_TO_INVOICETABBAR = "pushToInvoiceTABBAR"
        case PUSH_TO_EXPLORE_REWARDS = "pushToExploreRewards"
        case PUSH_TO_EXPLORE_REWARDSTABBAR = "pushToExploreRewardsTABBAR"
        case PUSH_TO_REWARDS_LANDING = "pushToRewardsLanding"
        case PUSH_TO_PDP_WITH_PERMALINK = "pushToPDPWithPermaLink"
        case PUSH_TO_CART = "pushToCart"
        case PUSH_TO_WISHLIST = "pushToWishlist"
        case SAVED_CARDS = "savedCards"
        case FETCH_SAVED_CARDS = "fetchSavedCards"
        case TOKEN_EXPIRE = "tokenExpire"
        case TOKEN_EXPIRE401 = "tokenExpire401"
        case CHECK_APP_VERSION = "check_app_version"
        case SHOW_LOGIN = "show_login"
        case PUSH_TO_VC = "pushToViewController"
        case SHOW_PACKAGES = "packages"
        case SHOW_KIDS_PLP = "kids-plp"
        case PUSH_TO_VOUCHERS = "pushToVouchers"
        case PUSH_TO_PAYMENT_SETTINGS = "pushToPaymentSettings"
        case PUSH_TO_KIDS_HOME = "pushToKidsHome"
        case PUSH_TO_LOYALTY_HOME = "pushToLoyaltyHome"
        case PUSH_TO_KYC_HOME = "pushToKycHome"
        case PUSH_TO_ORDERS_HOME = "pushToOrdersHome"
        case PUSH_TO_ORDERS_HOMETABBAR = "pushToOrdersHomeTABBAR"
        case ON_TAP_DynamicHome = "ON_TAP"
        case ON_VISIBLE_DynamicHome = "ON_VISIBLE"
        case dynamicHome_LOADED = "dynahome_loaded"
        case dynamicHome_PULL_TO_REFRESH = "dynahome_pull_to_refresh"
        case dynamicHome_FAQ = "dynahome_faq_tapped"
        case dynamicHome_Privacy_Policy = "dynahome_privacy_policy_tapped"
        case dynamicHome_T_AND_C = "dynahome_tnc_tapped"
        case dynamicHome_Contact_Us = "dynahome_contactus_tapped"
        case dynamicHome_FF_Landing = "dynahome_ff_landing_tapped"
        case dynamicHome_FF_Listing = "dynahome_ff_listing_tapped"
        case dynamicHome_FF_Ledger = "dynahome_ff_ledger_tapped"
        case PDP_ADDONS_OPEN = "pdp_addon_open"
        case PDP_ADDONS_TAB_TAPPED = "pdp_addons_tab_tapped"
        case PDP_ADDONS_PLUS_TAPPED = "pdp_addons_plus_tapped"
        case PDP_ADDONS_MINUS_TAPPED = "pdp_addons_minus_tapped"
        case PDP_ADDONS_ITEM_TAPPED = "pdp_addons_item_tapped"
        case PDP_ADDONS_DETAILS_ADD_TAPPED = "pdp_addons_details_add_tapped"
        case PDP_ADDONS_ADD_TO_CART = "pdp_addons_add_to_cart"
        case PDP_VIEW_CART_TAPPED = "pdp_view_cart_tapped"
        case PDP_SELECT_ADDONS_TAPPED = "pdp_select_addons_tapped"
        case PDP_EXPLORE_TAPPED = "pdp_explore_tapped"
        case PDP_ADDONS_DISMISS = "pdp_addons_dismiss"
        case PDP_NEED_HELP_BLOB_TAPPED = "pdp_need_help_blob_tapped"
        case PDP_NEED_HELP_FORM_SUBMIT = "pdp_need_help_form_submit"
        case PDP_NEED_HELP_SECTION_EXPAND = "pdp_need_help_section_expand"
        case PDP_NEED_HELP_BUTTON_VISIBLE = "pdp_button_visible"
        case AUTOPAY_NEW_CARD_OPEN = "autopay_new_card_open"
        case AUTOPAY_CARD_NOT_SUPPORTED_ERROR = "autopay_card_not_supported_error"
        case AUTOPAY_ELIGIBLITY_ERROR_TAPPED = "autopay_eligiblility_error_tapped"
        case AUTOPAY_VIEW_SUPPORTED_CARDS = "autopay_view_supported_cards"
        case AUTOPAY_PROCEED_TAPPED = "autopay_proceed_tapped"
        case SCREEN_OPEN = "screen_open"
        case SCREEN_NAME = "screen_name"
        case SCREEN_NAVIGATED_FROM = "screen_navigated_from"
        case SEARCH_INITIATED = "Search Initiated"
        case SEARCH_RESULTS_LOADED = "Search Results Loaded"
        case SEARCH_RESULTS_SORTED = "Search Results Sorted"
        case NEW_KYC_PAGE_LOADED = "New KYC Page Loaded"
        
        // Upfront Checkout
        case UPFRONT_CHECKOUT_POP_UP_OPENED = "Upfront Checkout Pop Up Opened"
        case UPFRONT_CHECKOUT_PLAN_SELECTED = "Upfront Checkout Plan Selected"
        case UPFRONT_CHECKOUT_KNOW_MORE_OPENED = "Upfront Checkout Know More Opened"
        case UPFRONT_CHECKOUT_HOW_IT_WORKS_OPENED = "Upfront Checkout How It Works Opened"
        case UPFRONT_CHECKOUT_FAQS_OPENED = "Upfront Checkout FAQs Opened"
        case TOTAL_PAYABLE_BREAK_UP_OPENED = "Total Payable Break Up Opened"
        case PUSH_TO_UPFRONT_HOME = "pushToUpfrontHome"
        
        // NPS
        case NPS_POP_UP_SHOWN = "NPS Popup Shown"
        case NPS_POP_UP_DISMISSED = "NPS Popup Dismissed"
        case NPS_RATING_SUBMITTED = "NPS Rating Submitted"
        case NPS_RATING_VALUE = "NPS Rating Value"
        case NPS_APPSTORE_RATING_SUBMITTED = "Appstore Rating Popup Shown"
        case NPS_FEEDBACK_SUBMITTED = "Feedback Submitted"
        case NPS_FEEDBACK_COMMENT = "Feedback Comment"
        case NPS_FEEDBACK_VALUES = "Feedback Values"
        
        // VAS
        case VAS_POP_UP_SHOWN = "FCP Popup Opened"
        case VAS_POP_UP_KNOW_MORE_OPENED = "FCP Know More Opened"
        case VAS_FLEXI_POP_UP_OPENED = "Flexi Popup Opened"
        case FLEXI_KNOW_MORE_OPENED = "Flexi Know More Opened"
        
        // New Email Flow
        case login_Modal_Opened = "Login Modal Opened"
        case OTP_Verify_Clicked = "OTP Verify Clicked"
        case OTP_Resend = "OTP Resend"
        case email_Login_Clicked = "Email Login Clicked"
        case login_Success = "Login Success"
        case signup_Success = "Signup Success"
        case login_Email_Submitted = "Login Email Submitted"
        case mobile_Login_Clicked = "Mobile Login Clicked"
        case user_Registration_Form_Opened = "User Registration Form Opened"
        case user_Create_Account_Clicked = "User Create Account Clicked"
        case email_Conflict_Action = "Email Conflict Action"
        case BOTTOM_NAVIGATION_CLICKED = "Bottom Nav Clicked"
    }
}

extension Text {
    func addCustomFontAndColor(font: Font, color: Color = .secondary) -> Text {
            return self.font(font).foregroundColor(color)
    }
}
