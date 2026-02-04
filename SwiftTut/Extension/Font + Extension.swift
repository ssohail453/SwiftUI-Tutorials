//
//  Font + Extension.swift
//  SwiftTut
//
//  Created by Syed Sohail on 15/01/26.
//
import SwiftUI

extension Font {
    private static func scaledFont(
        name: String,
        size: CGFloat,
        textStyle: Font.TextStyle
    ) -> Font {
        Font.custom(name, size: size, relativeTo: textStyle)
    }
    
    // MARK: - Roman / Regular
    static let fontSize10: Font = scaledFont(name: FurlencoConstant.FONT_REGULAR, size: 10, textStyle: .footnote)
    static let fontSize12: Font = scaledFont(name: FurlencoConstant.FONT_REGULAR, size: 12, textStyle: .footnote)
    static let fontSize14: Font = scaledFont(name: FurlencoConstant.FONT_REGULAR, size: 14, textStyle: .body)
    static let fontSize16: Font = scaledFont(name: FurlencoConstant.FONT_REGULAR, size: 16, textStyle: .body)
    static let fontSize20: Font = scaledFont(name: FurlencoConstant.FONT_REGULAR, size: 20, textStyle: .headline)
    static let fontSize24: Font = scaledFont(name: FurlencoConstant.FONT_REGULAR, size: 24, textStyle: .title2)
    static let fontSize32: Font = scaledFont(name: FurlencoConstant.FONT_REGULAR, size: 32, textStyle: .title)
    static let fontSize40: Font = scaledFont(name: FurlencoConstant.FONT_REGULAR, size: 40, textStyle: .largeTitle)
    static let fontSize56: Font = scaledFont(name: FurlencoConstant.FONT_REGULAR, size: 56, textStyle: .largeTitle)

    // MARK: - Medium
    static let fontSize10Medium: Font = scaledFont(name: FurlencoConstant.FONT_MEDIUM, size: 10, textStyle: .footnote)
    static let fontSize12Medium: Font = scaledFont(name: FurlencoConstant.FONT_MEDIUM, size: 12, textStyle: .footnote)
    static let fontSize14Medium: Font = scaledFont(name: FurlencoConstant.FONT_MEDIUM, size: 14, textStyle: .body)
    static let fontSize16Medium: Font = scaledFont(name: FurlencoConstant.FONT_MEDIUM, size: 16, textStyle: .body)
    static let fontSize20Medium: Font = scaledFont(name: FurlencoConstant.FONT_MEDIUM, size: 20, textStyle: .headline)
    static let fontSize24Medium: Font = scaledFont(name: FurlencoConstant.FONT_MEDIUM, size: 24, textStyle: .title2)
    static let fontSize32Medium: Font = scaledFont(name: FurlencoConstant.FONT_MEDIUM, size: 32, textStyle: .title)
    static let fontSize40Medium: Font = scaledFont(name: FurlencoConstant.FONT_MEDIUM, size: 40, textStyle: .largeTitle)
    static let fontSize56Medium: Font = scaledFont(name: FurlencoConstant.FONT_MEDIUM, size: 56, textStyle: .largeTitle)

    // MARK: - Heavy / Bold
    static let fontSize10Heavy: Font = scaledFont(name: FurlencoConstant.FONT_HEAVY, size: 10, textStyle: .footnote)
    static let fontSize12Heavy: Font = scaledFont(name: FurlencoConstant.FONT_HEAVY, size: 12, textStyle: .footnote)
    static let fontSize14Heavy: Font = scaledFont(name: FurlencoConstant.FONT_HEAVY, size: 14, textStyle: .body)
    static let fontSize16Heavy: Font = scaledFont(name: FurlencoConstant.FONT_HEAVY, size: 16, textStyle: .body)
    static let fontSize20Heavy: Font = scaledFont(name: FurlencoConstant.FONT_HEAVY, size: 20, textStyle: .headline)
    static let fontSize24Heavy: Font = scaledFont(name: FurlencoConstant.FONT_HEAVY, size: 24, textStyle: .title2)
    static let fontSize32Heavy: Font = scaledFont(name: FurlencoConstant.FONT_HEAVY, size: 32, textStyle: .title)
    static let fontSize40Heavy: Font = scaledFont(name: FurlencoConstant.FONT_HEAVY, size: 40, textStyle: .largeTitle)
    static let fontSize56Heavy: Font = scaledFont(name: FurlencoConstant.FONT_HEAVY, size: 56, textStyle: .largeTitle)
}

extension UIFont {
    private static func scaledFont(
        name: String,
        size: CGFloat,
        textStyle: UIFont.TextStyle = .body,
        weight: UIFont.Weight = .regular
    ) -> UIFont {
        let baseFont = UIFont(name: name, size: size)
            ?? .systemFont(ofSize: size, weight: weight)
        return UIFontMetrics(forTextStyle: textStyle)
            .scaledFont(for: baseFont)
    }

    // MARK: - Roman / Regular
    static let fontSize10: UIFont = scaledFont(name: FurlencoConstant.FONT_REGULAR, size: 10, textStyle: .footnote)
    static let fontSize12: UIFont = scaledFont(name: FurlencoConstant.FONT_REGULAR, size: 12, textStyle: .footnote)
    static let fontSize14: UIFont = scaledFont(name: FurlencoConstant.FONT_REGULAR, size: 14, textStyle: .body)
    static let fontSize16: UIFont = scaledFont(name: FurlencoConstant.FONT_REGULAR, size: 16, textStyle: .body)
    static let fontSize20: UIFont = scaledFont(name: FurlencoConstant.FONT_REGULAR, size: 20, textStyle: .headline)
    static let fontSize24: UIFont = scaledFont(name: FurlencoConstant.FONT_REGULAR, size: 24, textStyle: .title2)
    static let fontSize32: UIFont = scaledFont(name: FurlencoConstant.FONT_REGULAR, size: 32, textStyle: .title1)
    static let fontSize40: UIFont = scaledFont(name: FurlencoConstant.FONT_REGULAR, size: 40, textStyle: .largeTitle)
    static let fontSize56: UIFont = scaledFont(name: FurlencoConstant.FONT_REGULAR, size: 56, textStyle: .largeTitle)

    // MARK: - Medium
    static let fontSize10Medium: UIFont = scaledFont(name: FurlencoConstant.FONT_MEDIUM, size: 10, textStyle: .footnote,    weight: .medium)
    static let fontSize12Medium: UIFont = scaledFont(name: FurlencoConstant.FONT_MEDIUM, size: 12, textStyle: .footnote,    weight: .medium)
    static let fontSize14Medium: UIFont = scaledFont(name: FurlencoConstant.FONT_MEDIUM, size: 14, textStyle: .body,        weight: .medium)
    static let fontSize16Medium: UIFont = scaledFont(name: FurlencoConstant.FONT_MEDIUM, size: 16, textStyle: .body,        weight: .medium)
    static let fontSize20Medium: UIFont = scaledFont(name: FurlencoConstant.FONT_MEDIUM, size: 20, textStyle: .headline,    weight: .medium)
    static let fontSize24Medium: UIFont = scaledFont(name: FurlencoConstant.FONT_MEDIUM, size: 24, textStyle: .title2,      weight: .medium)
    static let fontSize32Medium: UIFont = scaledFont(name: FurlencoConstant.FONT_MEDIUM, size: 32, textStyle: .title1,      weight: .medium)
    static let fontSize40Medium: UIFont = scaledFont(name: FurlencoConstant.FONT_MEDIUM, size: 40, textStyle: .largeTitle,  weight: .medium)
    static let fontSize56Medium: UIFont = scaledFont(name: FurlencoConstant.FONT_MEDIUM, size: 56, textStyle: .largeTitle,  weight: .medium)

    // MARK: - Heavy / Bold
    static let fontSize10Heavy: UIFont = scaledFont(name: FurlencoConstant.FONT_HEAVY, size: 10, textStyle: .footnote,      weight: .heavy)
    static let fontSize12Heavy: UIFont = scaledFont(name: FurlencoConstant.FONT_HEAVY, size: 12, textStyle: .footnote,      weight: .heavy)
    static let fontSize14Heavy: UIFont = scaledFont(name: FurlencoConstant.FONT_HEAVY, size: 14, textStyle: .body,          weight: .heavy)
    static let fontSize16Heavy: UIFont = scaledFont(name: FurlencoConstant.FONT_HEAVY, size: 16, textStyle: .body,          weight: .heavy)
    static let fontSize20Heavy: UIFont = scaledFont(name: FurlencoConstant.FONT_HEAVY, size: 20, textStyle: .headline,      weight: .heavy)
    static let fontSize24Heavy: UIFont = scaledFont(name: FurlencoConstant.FONT_HEAVY, size: 24, textStyle: .title2,        weight: .heavy)
    static let fontSize32Heavy: UIFont = scaledFont(name: FurlencoConstant.FONT_HEAVY, size: 32, textStyle: .title1,        weight: .heavy)
    static let fontSize40Heavy: UIFont = scaledFont(name: FurlencoConstant.FONT_HEAVY, size: 40, textStyle: .largeTitle,    weight: .heavy)
    static let fontSize56Heavy: UIFont = scaledFont(name: FurlencoConstant.FONT_HEAVY, size: 56, textStyle: .largeTitle,    weight: .heavy)
}

