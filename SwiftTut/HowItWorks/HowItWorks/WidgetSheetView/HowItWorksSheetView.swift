//
//  HowItWorksSheetView.swift
//  Furlenco
//
//  Created by Syed Sohail on 31/12/25.
//
//import SwiftUI
//
//struct HowItWorksSheetView: View {
//
//    @State var showDetails: Bool = false
//    @State var detailsViewArray: [AnyView] = []
//    var viewHeight: CGFloat
//    var dataArray: HowItWorksData
//    
//    var body: some View {
//        VStack {
//            if #available(iOS 17.0, *) {
//                NavigationStack {
//                    VStack(alignment: .leading, spacing: StyleConstants.CONSTANT.CONSTANT_12) {
//                        Text(dataArray.sheetWidgets?.first?.data?.title ?? "")
//                            .modifier(CommonFontViewModifier(fontType: AppFonts.H14SemiBold.fontStyle, fontColor: Color.appGray))
//                        
//                        VStack(alignment: .leading) {
//                            ScrollView(showsIndicators: false) {
//                                let data = dataArray.components ?? []
//                                ForEach(Array(data.enumerated()), id: \.offset) { _, item in
//                                    HStack {
//                                        Text(item.displayText ?? "")
//                                            .modifier(CommonFontViewModifier(fontType: AppFonts.PRegular.fontStyle, fontColor: Color.appGray))
//                                        Spacer()
//                                        Image(AssetConstant.RIGHT_ARROW_GRAY)
//                                            .resizable()
//                                            .frame(width: 18, height: 18)
//                                    }
//                                    .padding(.vertical, StyleConstants.CONSTANT.CONSTANT_12)
//                                    .background {
//                                        Color.white
//                                    }
//                                    .onTapGesture {
//                                        addSheetWidget(item: item)
//                                    }
//                                    Divider()
//                                }
//                            }
//                        }
//                        .padding(.vertical)
//                        .navigationDestination(isPresented: $showDetails) {
//                            HowItWorksSheetDetailView(viewArray: $detailsViewArray, viewHeight: viewHeight)
//                        }
//                        Spacer()
//                    }
//                    .padding(StyleConstants.CONSTANT.CONSTANT_16)
//                    .padding(.top, 20)
//                    .frame(maxWidth: .infinity)
//                }
//            } else {
//                // Fallback on earlier versions
//                NavigationView {
//                    VStack(alignment: .leading, spacing: StyleConstants.CONSTANT.CONSTANT_12) {
//                        Text(dataArray.sheetWidgets?.first?.data?.title ?? "")
//                            .modifier(CommonFontViewModifier(fontType: AppFonts.H14SemiBold.fontStyle, fontColor: Color.appGray))
//                        
//                        VStack(alignment: .leading) {
//                            ScrollView(showsIndicators: false) {
//                                let data = dataArray.components ?? []
//                                ForEach(Array(data.enumerated()), id: \.offset) { _, item in
//                                    HStack {
//                                        Text(item.displayText ?? "")
//                                            .modifier(CommonFontViewModifier(fontType: AppFonts.PRegular.fontStyle, fontColor: Color.appGray))
//                                        Spacer()
//                                        Image(AssetConstant.RIGHT_ARROW_GRAY)
//                                            .resizable()
//                                            .frame(width: 18, height: 18)
//                                    }
//                                    .padding(.vertical, StyleConstants.CONSTANT.CONSTANT_12)
//                                    .background {
//                                        Color.white
//                                    }
//                                    .onTapGesture {
//                                        addSheetWidget(item: item)
//                                    }
//                                    Divider()
//                                }
//                            }
//                        }
//                        .padding(.vertical)
//                        Spacer()
//                    }
//                    .padding(StyleConstants.CONSTANT.CONSTANT_16)
//                    .padding(.top, 20)
//                    .frame(maxWidth: .infinity)
//                    .background(
//                        NavigationLink(
//                            destination: HowItWorksSheetDetailView(
//                                viewArray: $detailsViewArray,
//                                viewHeight: viewHeight
//                            ),
//                            isActive: $showDetails,
//                            label: { EmptyView() }
//                        )
//                        .hidden()
//                    )
//                    .navigationBarTitleDisplayMode(.inline)
//                    .ignoresSafeArea(.container, edges: .top)
//                }
//                .navigationViewStyle(StackNavigationViewStyle())
//            }
//        }
//    }
//    
//    func addSheetWidget(item: HowItWorksComponent) {
//        let sheetWidgets = dataArray.sheetWidgets?.first?.data?.components ?? []
//        for component in sheetWidgets {
//            if item.id ?? "" == component.id {
//                for slides in component.carousel?.slides ?? [] {
//                    self.detailsViewArray.append(AnyView(
//                        IMAGE_TILE(
//                            withurl: slides.data?.image?.url ?? LabelConstant.BLANK_STRING,
//                            aspectRatio: slides.data?.image?.aspectRatio ?? 1.675,
//                            cornerRadius: StyleConstants.CONSTANT.CONSTANT_16
//                            )
//                    ))
//                }
//                self.showDetails = true
//            }
//        }
//    }
//}


//case let .CAROUSEL_4(widgetData):
//    HOW_IT_WORKS_VIEW(widgetData: widgetData, widgetId: widgetModel.id, widgetName: widgetModel.widgetName)
