////
////  HowItWorks.swift
////  Furlenco
////
////  Created by Syed Sohail on 24/12/25.
////
//
//import SwiftUI
//import Combine
//
//struct HOW_IT_WORKS_VIEW: View {
//        
//    @State var index: Int = 0
//    @State var detailsSheetData: [HowItWorksCarouselSlide] = []
//    @State private var sheetIsPresented: Bool = false
//    @State private var detailSheetIsPresented: Bool = false
//    @State var detailsViewArray: [AnyView] = []
//    @State var viewHeight: CGFloat = 223
//    @Namespace private var dotNamespace
//        
//    var widgetData: HowItWorksData
//    var widgetId: Int?
//    var widgetName: String?
//    var components: [HowItWorksComponent] = []
//    var sheetWidget: HowItWorksSheetWidget?
//    var viewArray: [AnyView]?
//    
//    var data: [HowItWorksComponent] = []
//    
//    init(
//        widgetData: HowItWorksData,
//        widgetId: Int? = nil,
//        widgetName: String? = nil
//    ) {
//        self.widgetData = widgetData
//        self.widgetId = widgetId
//        self.widgetName = widgetName
//        
//        // Build viewArray if source data is present
//        var tempViews: [AnyView] = []
//        if let sheetWidgets = widgetData.sheetWidgets {
//            self.sheetWidget = sheetWidgets.first
//        }
//        
//        if let components = widgetData.components {
//            self.components = components
//            self.viewHeight = (UIScreen.main.bounds.width - 16.0) / CGFloat(components.first?.data?.image?.aspectRatio ?? 1.675)
//            for component in components {
//                data.append(component)
//                tempViews.append(
//                    AnyView(
//                        IMAGE_TILE(
//                            withurl: component.data?.image?.url ?? LabelConstant.BLANK_STRING,
//                            aspectRatio: component.data?.image?.aspectRatio ?? 1.675,
//                            cornerRadius: StyleConstants.CONSTANT.CONSTANT_16
//                        )
//                    )
//                )
//            }
//        }
//        self.viewArray = tempViews
//    }
//    
//    var body: some View {
//        ZStack {
//            if let background = widgetData.background {
//                WIDGET_BACKGROUND_VIEW(backGroundType: background)
//            }
//            VStack(alignment: .leading, spacing: 16) {
//                VStack {
//                    if #available(iOS 16.4, *) {
//                        if let viewArray = viewArray {
//                            HOW_IT_WORKS_CAROUSEL_VIEW(selectedIndex: $index, viewHeight: self.viewHeight, backgroundColor: widgetData.background, viewArray: viewArray)
//                                .onTapGesture {
//                                    if index == viewArray.count - 1 {
//                                        sheetIsPresented.toggle()
//                                    } else {
//                                        detailsViewArray.removeAll()
//                                        let sheetData = data[index].cta?.data?.actionData?.initialItemId
//                                        let components = sheetWidget?.data?.components ?? []
//                                        self.viewHeight = (UIScreen.main.bounds.width - 16.0) / CGFloat(data[index].data?.image?.aspectRatio ?? 1.675)
//                                        if let sheetData {
//                                            for sheetWidget in components {
//                                                if sheetWidget.id == sheetData {
//                                                    let slides = sheetWidget.carousel?.slides ?? []
//                                                    for carouselData in slides {
//                                                        
//                                                        detailsViewArray.append(AnyView(
//                                                            IMAGE_TILE(
//                                                                withurl: carouselData.data?.image?.url ?? LabelConstant.BLANK_STRING,
//                                                                aspectRatio: carouselData.data?.image?.aspectRatio ?? 1.5,
//                                                                cornerRadius: StyleConstants.CONSTANT.CONSTANT_16
//                                                            )
//                                                        ))
//                                                    }
//                                                    
//                                                }
//                                            }
//                                        }
//                                        detailSheetIsPresented.toggle()
//                                    }
//                                }
//                                .sheet(isPresented: $sheetIsPresented) {
//                                    HowItWorksSheetView(viewHeight: self.viewHeight, dataArray: widgetData)
//                                        .presentationDetents([.medium])
//                                        .presentationCornerRadius(16)
//                                        .presentationDragIndicator(.hidden)
//                                }
//                                .sheet(isPresented: $detailSheetIsPresented) {
//                                    HowItWorksSheetDetailView(viewArray: $detailsViewArray, viewHeight: self.viewHeight)
//                                        .presentationDetents([.medium])
//                                        .presentationCornerRadius(16)
//                                        .presentationDragIndicator(.hidden)
//                                }
//                        }
//                    } else {
//                        // Fallback on earlier versions
//                        if let viewArray = viewArray {
//                            HOW_IT_WORKS_CAROUSEL_VIEW(selectedIndex: $index, viewHeight: self.viewHeight, backgroundColor: widgetData.background, viewArray: viewArray)
//                                .onTapGesture {
//                                    if index == viewArray.count - 1 {
//                                        sheetIsPresented.toggle()
//                                    } else {
//                                        detailsViewArray.removeAll()
//                                        let sheetData = data[index].cta?.data?.actionData?.initialItemId
//                                        let components = sheetWidget?.data?.components ?? []
//                                        self.viewHeight = (UIScreen.main.bounds.width - 16.0) / CGFloat(data[index].data?.image?.aspectRatio ?? 1.675)
//                                        if let sheetData {
//                                            for sheetWidget in components {
//                                                if sheetWidget.id == sheetData {
//                                                    let slides = sheetWidget.carousel?.slides ?? []
//                                                    for carouselData in slides {
//                                                        
//                                                        detailsViewArray.append(AnyView(
//                                                            IMAGE_TILE(
//                                                                withurl: carouselData.data?.image?.url ?? LabelConstant.BLANK_STRING,
//                                                                aspectRatio: carouselData.data?.image?.aspectRatio ?? 1.5,
//                                                                cornerRadius: StyleConstants.CONSTANT.CONSTANT_16
//                                                            )
//                                                        ))
//                                                    }
//                                                    
//                                                }
//                                            }
//                                        }
//                                        detailSheetIsPresented.toggle()
//                                    }
//                                }
//                                .sheet(isPresented: $sheetIsPresented) {
//                                    HowItWorksSheetView(viewHeight: self.viewHeight, dataArray: widgetData)
//                                        .background {
//                                            BottomSheetConfigurator()
//                                        }
//                                }
//                                .sheet(isPresented: $detailSheetIsPresented) {
//                                    HowItWorksSheetDetailView(viewArray: $detailsViewArray, viewHeight: self.viewHeight)
//                                        .background {
//                                            BottomSheetConfigurator()
//                                        }
//                                }
//                        }
//                    }
//                }
//            }
//            .padding(.horizontal, 8)
//        }
//        .padding(.vertical, 12)
//    }
//}
//
//// To make buttom sheet for iOS version below iOS 16.4
//struct BottomSheetConfigurator: UIViewControllerRepresentable {
//
//    func makeUIViewController(context: Context) -> UIViewController {
//        UIViewController()
//    }
//
//    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
//
//        DispatchQueue.main.async {
//            guard let sheet = uiViewController.view.window?
//                .rootViewController?
//                .presentedViewController else { return }
//
//            if let presentation = sheet.presentationController as? UISheetPresentationController {
//                presentation.detents = [.medium()]
//                presentation.preferredCornerRadius = 16
//                presentation.prefersGrabberVisible = false
//            }
//        }
//    }
//}
//
//
