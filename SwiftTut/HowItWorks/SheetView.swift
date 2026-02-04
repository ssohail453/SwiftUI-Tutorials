//
//  SheetView.swift
//  SwiftTut
//
//  Created by Syed Sohail on 12/01/26.
//

import SwiftUI

struct SheetView: View {
    @State var sheetIsPresented: Bool = false
    var body: some View {
        VStack {
            
            VStack {
                CarouselView()
                .onTapGesture {
                    sheetIsPresented.toggle()
                }
                .sheet(isPresented: $sheetIsPresented) {
                    if #available(iOS 16.4, *) {
                        HowItWorksSheetView(
                            viewHeight: 200,
                            dataArray: ["Sohail", "Fahad", "Zubair", "Arif", "Fahad", "Zubair", "Arif", "Fahad", "Zubair", "Arif"]
                        )
                        .presentationDetents([.medium])
//                        .presentationCornerRadius(16)
                        .presentationDragIndicator(.hidden)
                        .ignoresSafeArea()
                        .presentationBackground(Color.black.opacity(0.9))
                        .presentationCompactAdaptation(
                            horizontal: .none,
                            vertical: .none)
                    } else {
                        // Fallback on earlier versions
                        HowItWorksSheetView(
                            viewHeight: 200,
                            dataArray: ["Sohail", "Fahad", "Zubair", "Arif", "Fahad", "Zubair", "Arif", "Fahad", "Zubair", "Arif"]
                        )
                        .background(
                            BottomSheetConfigurator()
                        )
                    }
                }
            }

        }
    }
}

#Preview {
    if #available(iOS 18, *) {
        SheetView()
    } else {
        // Fallback on earlier versions
    }
}

struct HowItWorksSheetView: View {
    var viewHeight: CGFloat
    var dataArray: [String]
    @State var isPresented: Bool = false
    var body: some View {
        VStack {
            if #available(iOS 16.0, *) {
                NavigationStack {
                    ScrollView {
                        ForEach(0 ..< dataArray.count, id: \.self) {str in
                            HStack{
                                Text(dataArray[str])
                                    .font(.title)
                                Spacer()
                                Image(systemName: "arrowshape.right.fill")
                            }
                            .onTapGesture {
                                isPresented.toggle()
                            }
                            
                            Divider()
                        }
                    }
                    .background(Color.white)
                    .navigationDestination(isPresented: $isPresented) {
                        NetworkCall()
                    }
                }
            } else {
                // Fallback on earlier versions
            }
        }
        .padding(.vertical, 20)
    }
}

extension View {
    @ViewBuilder
    func applyBottomSheetStyle() -> some View {
        if #available(iOS 16.4, *) {
            self
                .presentationDetents([.medium])
                .presentationCornerRadius(16)
                .presentationDragIndicator(.hidden)
        } else {
            self
                .background(
                    BottomSheetConfigurator()
                )
        }
    }
}


struct BottomSheetConfigurator: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> UIViewController {
        UIViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {

        DispatchQueue.main.async {
            guard let sheet = uiViewController.view.window?
                .rootViewController?
                .presentedViewController else { return }

            if let presentation = sheet.presentationController as? UISheetPresentationController {
                presentation.detents = [.medium()]
                presentation.preferredCornerRadius = 16
                presentation.prefersGrabberVisible = false
            }
        }
    }
}

@available(iOS 18, *)
struct SheetViewTwo: View {
    @State var showSheet: Bool = false
    @State private var selectedDetent: PresentationDetent = .medium
    var body: some View {
        if #available(iOS 18, *) {
            NavigationStack {
                VStack {
                    Button {
                        showSheet.toggle()
                    } label: {
                        HStack {
                            Image(systemName: "chevron.left")
                            Text("Back")
                        }
                    }
                    Spacer()
                    Text("Hello, World!")
                        .font(.fontSize16)
                    Spacer()
                }
                .toolbarBackground(Color.red, for: .navigationBar)
//                .popover(isPresented: $showSheet, content: {
//                    ZStack {
//                        Color.white
//                        VStack {
//                            ForEach(0 ..< 15, id: \.self) { i in
//                                Text(" Hello \(i)")
//                            }
//                        }
//                    }
////                    .presentationDetents([.medium, .fraction(0.9), .large])
//                    .presentationDetents([.medium, .large, .fraction(0.25)], selection: $selectedDetent)
//                    .ignoresSafeArea()
//                    
//                })
                
                .sheet(isPresented: $showSheet, content: {
                    VStack {
                        VStack {
                            ForEach(0 ..< 15, id: \.self) { i in
                                Text(" Hello \(i)")
                            }
                        }
                        .toolbar {
                            ToolbarItem(placement: .topBarLeading) {
                                Text("Back Button")
                            }
                        }
                        
                    }
                    .presentationDetents([.height(400), .large])
                    .presentationBackgroundInteraction(.disabled)
                    .presentationDragIndicator(.hidden)
                    
                })
                .toolbar {
                    if #available(iOS 26.0, *) {
                        ToolbarItem(placement: .topBarLeading) {
                            HStack(spacing: 0) {
                                Image(systemName: "chevron.left")
                                Text("Back Button")
                                
                            }
                            .fixedSize()
                            
                        }
                        .sharedBackgroundVisibility(.hidden)
                    } else {
                        // Fallback on earlier versions
                        ToolbarItem(placement: .topBarLeading) {
                            HStack {
                                Image(systemName: "chevron.left")
                                Text("Back")
                            }
                            
                        }
                    }
                }
                .toolbarBackground(Color.blue, for: .navigationBar)
            }
        } else {
            // Fallback on earlier versions
        }
    }
}

