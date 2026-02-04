//
//  HowItWorksDetailsView.swift
//  Furlenco
//
//  Created by Syed Sohail on 31/12/25.
//
//
//import SwiftUI
//
//struct HowItWorksSheetDetailView: View {
//    @SwiftUI.Environment(\.dismiss) private var dismiss
//    @State var index: Int = 0
//    @Binding var viewArray: [AnyView]
//    var viewHeight: CGFloat
//    
//    var body: some View {
//        VStack {
//            if !viewArray.isEmpty {
//                HOW_IT_WORKS_CAROUSEL_VIEW(selectedIndex: $index,viewHeight: self.viewHeight ,backgroundColor: nil, viewArray: viewArray)
//            }
//        }
//        .padding(.vertical, StyleConstants.CONSTANT.CONSTANT_20)
//        .padding(.horizontal, StyleConstants.CONSTANT.CONSTANT_16)
//        .navigationBarBackButtonHidden(true)
//        .toolbar {
//            ToolbarItem(placement: .topBarLeading) {
//                HStack(spacing: 0) {
//                    Image(AssetConstant.LEFT_CHEVRON_GRAY)
//                        .resizable()
//                        .frame(width: StyleConstants.CONSTANT.CONSTANT_14, height: StyleConstants.CONSTANT.CONSTANT_14)
//                    
//                    Text(AssetConstant.BACK_TO_QUESTIONS)
//                        .modifier(CommonFontViewModifier(fontType: AppFonts.PRegular.fontStyle, fontColor: Color.appGray))
//                }
//                .onTapGesture {
//                    dismiss()
//                    viewArray.removeAll()
//                }
//            }
//        }
//    }
//}
