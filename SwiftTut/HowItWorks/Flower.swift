//
//  Flower.swift
//  SwiftTut
//
//  Created by Syed Sohail on 23/01/26.
//

import Foundation

enum Flower: String, CaseIterable, Identifiable {
    case rose
    case tulip
    case sunflower
    case daisy
    case lily

    var id: String { rawValue }

    var emoji: String {
        switch self {
        case .rose: return "🌹"
        case .tulip: return "🌷"
        case .sunflower: return "🌻"
        case .daisy: return "🌼"
        case .lily: return "🌸"
        }
    }

    var informationalText: String {
        switch self {
        case .rose:
            return "Roses are classic garden flowers known for their fragrance and layered petals."
        case .tulip:
            return "Tulips are spring-blooming perennials with vibrant cup-shaped flowers."
        case .sunflower:
            return "Sunflowers are tall, sun-loving plants with large flower heads that follow the sun."
        case .daisy:
            return "Daisies symbolize innocence and feature a simple, cheerful blossom."
        case .lily:
            return "Lilies have large, often fragrant flowers and come in many varieties."
        }
    }
}
