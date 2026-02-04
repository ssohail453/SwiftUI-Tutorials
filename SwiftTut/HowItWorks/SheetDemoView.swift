//
//  SheetDemoView.swift
//  SwiftTut
//
//  Created by Syed Sohail on 23/01/26.
//

import SwiftUI

struct SheetDemoView: View {
    @State var presentInfo = false
    @State var flower: Flower = .rose
    var body: some View {
        ZStack {
            if presentInfo {
                Color.gray.opacity(0.3).ignoresSafeArea()
            } else {
                Color.white.ignoresSafeArea()
            }
            VStack {
                Button {
                    withAnimation {
                        presentInfo.toggle()
                    }
                } label: {
                    Text("Toggle Sheet")
                    
                }
                
            }
            .onTapGesture {
                withAnimation {
                    presentInfo.toggle()
                }
                
            }
            .overlay {
//                if presentInfo {
                ZStack {
                    Color.blue.edgesIgnoringSafeArea(.all)
                    VStack {
                        
                        Text(flower.emoji).font(.largeTitle)
                        Text(flower.informationalText)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
//                    .background(Color.white)
                    
                }
                .offset(y: presentInfo ? 0 : UIScreen.main.bounds.height * 10)
//                }
                
            }
        }
        .onTapGesture {
            presentInfo.toggle()
        }
//        .sheet(isPresented: $presentInfo) {
//            if #available(iOS 18.0, *) {
//                VStack {
//                    Picker("Flower Species", selection: $flower) {
//                        ForEach(Flower.allCases, id: \.self) { flower in
//                            Text(flower.rawValue.uppercased()).tag(flower)
//                        }
//                    }
//                    Text(flower.emoji).font(.largeTitle)
//                    Text(flower.informationalText)
//                }
//                .frame(maxHeight: .infinity, alignment: .top)
//                .padding()
//                .presentationSizing(
//                    .page
//                        .fitted(horizontal: true, vertical: true)
//                        .sticky(horizontal: true, vertical: true))
//                .presentationDetents([.medium])
//                .presentationBackground(Color.white)
//                .presentationCompactAdaptation(.sheet)
//            } else {
//                // Fallback on earlier versions
//            }
//                }
    }
}

#Preview {
    SheetDemoView()
}

