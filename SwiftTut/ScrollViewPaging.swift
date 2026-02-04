//
//  ScrollViewPaging.swift
//  SwiftTut
//
//  Created by Syed Sohail on 23/12/25.
//

import SwiftUI


struct ScrollViewPagingBootcamp: View {
    
    @State private var selection: Int = 0
    @Namespace private var dotNamespace
    private let itemCount = 5
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Title")
                .font(.system(size: 80, weight: .black, design: .rounded))
            
            Text("Subtitles")
            
            TabView(selection: $selection) {
                ForEach(0..<itemCount, id: \.self) { index in
                    VStack {
                        Rectangle()
                            .fill(
                                LinearGradient(colors: [Color.blue.opacity(0.9), Color.purple.opacity(0.9)], startPoint: .topLeading, endPoint: .bottomTrailing)
                            )
                            .frame(width: UIScreen.main.bounds.width - 40, height: 300)
                            .cornerRadius(16)
                            .shadow(color: .black.opacity(0.15), radius: 12, x: 0, y: 8)
                            .overlay(
                                Text("\(index)")
                                    .font(.system(size: 80, weight: .black, design: .rounded))
                                    .foregroundStyle(.white.opacity(0.95))
                                    .shadow(color: .black.opacity(0.25), radius: 6, x: 0, y: 3)
                            )
//                            .padding(20)
                    }
                    .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(width: UIScreen.main.bounds.width, height: 350, alignment: .top)
            .background() {
                Color.blue.opacity(0.3)
            }
            .animation(.spring(response: 0.45, dampingFraction: 0.85), value: selection)
            
            // Bottom dots indicator (animated)
//            HStack(alignment: .top, spacing: 3) {
//                ForEach(0..<itemCount, id: \.self) { index in
//                    
//                    if index == selection {
//                        Capsule()
//                            .frame(width: 96,
//                                   height: 24)
//                            .foregroundColor(.teal.opacity(1))
//                            .animation(.spring(), value: UUID())
//                    } else {
//                        Circle()
//                            .frame(width: 24,
//                                   height: 24)
//                            .foregroundColor(.teal.opacity(0.6))
//                            .animation(.spring(), value: UUID())
//                    }
//                }
//            }
            
            ZStack {
                GeometryReader { proxy in
                    // Background track for dots
                    let spacing: CGFloat = 10
                    let dotWidth: CGFloat = 8
                    let activeWidth: CGFloat = 24
                    let count = itemCount
                    let totalSpacing: CGFloat = spacing * CGFloat(max(count - 1, 0))
                    let totalDotsWidth = dotWidth * CGFloat(count)
                    let totalWidth = totalDotsWidth + totalSpacing
                    let containerWidth = proxy.size.width
                    let startX = max((containerWidth - totalWidth) / 2, 0)
                    let selected = CGFloat(selection)
                    let xOffset = startX + selected * (dotWidth + spacing)

                    // Inactive dots row
                    HStack(spacing: spacing) {
                        ForEach(0..<count, id: \.self) { idx in
                            Circle()
                                .fill(Color.teal.opacity(0.5))
                                .frame(width: dotWidth, height: dotWidth)
                                .onTapGesture {
                                    withAnimation(.spring(response: 0.45, dampingFraction: 0.85)) {
                                        selection = idx
                                    }
                                }
                        }
                    }
                    .frame(width: totalWidth, alignment: .leading)
                    .position(x: startX + totalWidth/2)

                    // Active capsule that slides over dots
                    Capsule(style: .continuous)
                        .fill(Color.teal.opacity(0.8))
                        .frame(width: activeWidth, height: 8)
                        .shadow(color: Color.blue.opacity(0.25), radius: 6, x: 0, y: 3)
                        .offset(x: xOffset, y: -5)
                        .animation(.spring(response: 0.45, dampingFraction: 0.85, blendDuration: 0.2), value: selection)
                        .matchedGeometryEffect(id: "activeDot", in: dotNamespace)
                }
            }
            .frame(height: 10)
        }
    }
}

#Preview {
    ScrollViewPagingBootcamp()
}

/*
 struct ScrollViewPagingBootcamp: View {
     
     @State private var selection: Int = 0
     @Namespace private var dotNamespace
     private let itemCount = 10
     
     var body: some View {
         VStack {
             Text("Title")
                 .font(.system(size: 80, weight: .black, design: .rounded))
             
             Text("Subtitles")
             
             TabView(selection: $selection) {
                 ForEach(0..<itemCount, id: \.self) { index in
                     VStack {
                         Rectangle()
                             .fill(
                                 LinearGradient(colors: [Color.blue.opacity(0.9), Color.purple.opacity(0.9)], startPoint: .topLeading, endPoint: .bottomTrailing)
                             )
                             .frame(width: UIScreen.main.bounds.width - 40, height: 300)
                             .cornerRadius(16)
                             .shadow(color: .black.opacity(0.15), radius: 12, x: 0, y: 8)
                             .overlay(
                                 Text("\(index)")
                                     .font(.system(size: 80, weight: .black, design: .rounded))
                                     .foregroundStyle(.white.opacity(0.95))
                                     .shadow(color: .black.opacity(0.25), radius: 6, x: 0, y: 3)
                             )
                             .padding(20)
                     }
                     .tag(index)
                 }
             }
             .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
             .animation(.spring(response: 0.45, dampingFraction: 0.85), value: selection)
             
             // Bottom dots indicator (animated)
             ZStack {
                 GeometryReader { proxy in
                     // Background track for dots
                     let spacing: CGFloat = 10
                     let dotWidth: CGFloat = 10
                     let activeWidth: CGFloat = 34
                     let count = itemCount
                     let totalSpacing: CGFloat = spacing * CGFloat(max(count - 1, 0))
                     let totalDotsWidth = dotWidth * CGFloat(count)
                     let totalWidth = totalDotsWidth + totalSpacing
                     let containerWidth = proxy.size.width
                     let startX = max((containerWidth - totalWidth) / 2, 0)
                     let selected = CGFloat(selection)
                     let xOffset = startX + selected * (dotWidth + spacing)

                     // Inactive dots row
                     HStack(spacing: spacing) {
                         ForEach(0..<count, id: \.self) { idx in
                             Circle()
                                 .fill(Color.teal.opacity(0.5))
                                 .frame(width: dotWidth, height: dotWidth)
                                 .onTapGesture {
                                     withAnimation(.spring(response: 0.45, dampingFraction: 0.85)) {
                                         selection = idx
                                     }
                                 }
                         }
                     }
                     .frame(width: totalWidth, alignment: .leading)
                     .position(x: startX + totalWidth/2, y: proxy.size.height/2)

                     // Active capsule that slides over dots
                     Capsule(style: .continuous)
                         .fill(Color.teal.opacity(0.8))
                         .frame(width: activeWidth, height: 12)
                         .shadow(color: Color.blue.opacity(0.25), radius: 6, x: 0, y: 3)
                         .offset(x: xOffset)
                         .animation(.spring(response: 0.45, dampingFraction: 0.85, blendDuration: 0.2), value: selection)
                         .matchedGeometryEffect(id: "activeDot", in: dotNamespace)
                 }
             }
             .frame(height: 28)
         }
     }
 }
 */
