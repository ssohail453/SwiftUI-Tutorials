//
//  SwiftUIView.swift
//  SwiftTut
//
//  Created by Syed Sohail on 22/12/25.
//

import SwiftUI
import Combine

struct SwiftUIView: View {
    @StateObject var vm = SwiftUIViewModel()
    @State var loader: Bool = true
    @State private var name = "sohail"
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 100, height: 100)
                .overlay {
                    Text("Hello")
                        .font(.largeTitle)
                        .foregroundStyle(Color.errorDark)
                }
            Text(vm.name)
                .addCustomFontAndColor(font: AppFonts.H5Medium.fontStyle, color: .blue)
                .onTapGesture {
                    loader.toggle()
                    print(vm.name)
                }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay {
            if loader {
                ZStack(alignment: .topTrailing) {
                    Color.blue.opacity(0.3).ignoresSafeArea()
                    Button {
                        loader.toggle()
                    } label: {
                        Image(systemName: "arrow.2.circlepath.circle")
                            .font(.title)
                            .padding()
                    }
                }
                

            }
        }
    }
}

#Preview {
    SwiftUIView()
}

class SwiftUIViewModel: ObservableObject {
   
    
     @Published var name: String = "sohail"
}

extension Color {
    static var errorDark: Color = Color(red: 237/255, green: 91/255, blue: 91/255)
}
