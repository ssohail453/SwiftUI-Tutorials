////
////  HowItWorksModel.swift
////  Furlenco
////
////  Created by Syed Sohail on 24/12/25.
////
//
//import Foundation
//
//struct HowItWorksModel: Codable {
//    let isLazy: Bool?
//    let componentType: String?
//    let lazyFetch: String?
//    var data: HowItWorksData?
//    let id: Int?
//    let templateType: String?
//    let widgetName: String?
//}
//
//struct HowItWorksData: Codable {
//    let title: String?
//    let template: WidgetTemplateType?
//    var components: [HowItWorksComponent]?
//    var sheetWidgets: [HowItWorksSheetWidget]?
//    let background: WidgetBackgroundType?
//}
//
//struct HowItWorksComponent: Codable {
//    let type: String?
//    let id: String?
//    let displayText: String?
//    var data: HowItWorksBannerData?
//    let cta: HowItWorksCTA?
//}
//
//struct HowItWorksBannerData: Codable {
//    var image: HowItWorksImage?
//    let placeHolderText: String?
//}
//
//struct HowItWorksCTA: Codable {
//    let action: String?
//    let data: HowItWorksCTAData?
//}
//
//struct HowItWorksCTAData: Codable {
//    let type: String?
//    let actionData: HowItWorksActionData?
//}
//
//struct HowItWorksActionData: Codable {
//    let sheetWidgetId: Int?
//    let initialItemId: String?
//}
//
//struct HowItWorksImage: Codable {
//    var aspectRatio: Double?
//    var url: String?
//}
//
//struct HowItWorksSheetWidget: Codable {
//    let isLazy: Bool?
//    let componentType: String?
//    let lazyFetch: String?
//    var data: HowItWorksSheetData?
//    let id: Int?
//    let templateType: String?
//    let widgetName: String?
//}
//
//struct HowItWorksSheetData: Codable {
//    let template: WidgetTemplateType?
//    let title: String?
//    let backToListText: String?
//    var components: [HowItWorksFAQComponent]?
//    let background: WidgetBackgroundType?
//}
//
//struct HowItWorksFAQComponent: Codable {
//    let id: String?
//    let question: String?
//    var carousel: HowItWorksCarousel?
//}
//
//struct HowItWorksCarousel: Codable {
//    var slides: [HowItWorksCarouselSlide]?
//    let indicatorActiveColor: String?
//    let indicatorInactiveColor: String?
//}
//
//struct HowItWorksCarouselSlide: Codable {
//    let type: String?
//    let title: String?
//    let subtitle: String?
//    var data: HowItWorksCarouselSlideData?
//    let cta: HowItWorksCTA?
//}
//
//struct HowItWorksCarouselSlideData: Codable {
//    var image: HowItWorksImage?
//}
//
//struct WidgetBackgroundValue: Codable {
//    let color: String?
//}
//
