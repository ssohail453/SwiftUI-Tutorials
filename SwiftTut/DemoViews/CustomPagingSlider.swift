//
//  CustomPagingSlider.swift
//  SwiftTut
//
//  Created by Syed Sohail on 23/12/25.
//

import SwiftUI

struct CustomPagingSlider: View {
    @State private var scrollPosition: Int? = nil
        
    var body: some View {
            VStack {
                Button("SCROLL TO") {
                    scrollPosition = (0..<20).randomElement()!
                }
                
                if #available(iOS 17.0, *) {
                    ScrollView(.horizontal) {
                        HStack(spacing: 0) {
                            ForEach(0..<20) { index in
                                Rectangle()
                                    .frame(width: 300, height: 300)
                                    .cornerRadius(10)
                                    .overlay(
                                        Text("\(index)").foregroundColor(.white)
                                            .font(.largeTitle)
                                    )
                                    .frame(maxWidth: .infinity)
                                    .padding(10)
                                    .id(index)
                                    
//                        .containerRelativeFrame(.horizontal, alignment: .center)
                            }
                        }
                        .padding(.vertical, 100)
                    }
                    .ignoresSafeArea()
                    .scrollTargetLayout()
                    .scrollTargetBehavior(.viewAligned)
                    .scrollBounceBehavior(.basedOnSize)
                    .scrollPosition(id: $scrollPosition, anchor: .center)
                    .animation(.smooth, value: scrollPosition)
                } else {
                    // Fallback on earlier versions
                }
            }
            
    //        ScrollView {
    //            VStack(spacing: 0) {
    //                ForEach(0..<20) { index in
    //                    Rectangle()
    ////                        .frame(width: 300, height: 300)
    //                        .overlay(
    //                            Text("\(index)").foregroundColor(.white)
    //                        )
    //                        .frame(maxWidth: .infinity)
    ////                        .padding(.vertical, 10)
    //                        .containerRelativeFrame(.vertical, alignment: .center)
    //                }
    //            }
    //        }
    //        .ignoresSafeArea()
    //        .scrollTargetLayout()
    //        .scrollTargetBehavior(.paging)
    //        .scrollBounceBehavior(.basedOnSize)
        }
}

#Preview {
    CustomPagingSlider()
}

struct Item: Identifiable {
    private(set) var id: UUID = .init()
    var backgroundColor: Color
    var title: String
}
