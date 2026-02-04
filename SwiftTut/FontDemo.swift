//
//  FontDemo.swift
//  SwiftTut
//
//  Created by Syed Sohail on 15/01/26.
//

import SwiftUI

struct FontDemo: View {
    @State var text: String = "#00FF00"
    var body: some View {
        ZStack {
            Color.colorCode(hex: text).ignoresSafeArea()
            VStack {
                Text("Hello, World! demo")
                    .font(.fontSize10)
                    .padding()
                    .background(Color.colorCode(hex: text))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                TextField("", text: $text)
                    .padding()
                    .background {
                        Color.gray.opacity(0.4)
                    }
                    .textFieldStyle(.roundedBorder)
            }
        }
        .ignoresSafeArea()

            
    }
}

#Preview {
    FontDemo()
}

public extension Color {
    /// Creates a Color from a hex string. If parsing fails, returns `.clear`.
    /// - Parameter hex: A hex color string, e.g., "#1E88E5" or "1E88E5FF".
    static func colorCode(hex: String) -> Color {
        // Trim whitespace and remove leading '#'
        let cleaned = hex.trimmingCharacters(in: .whitespacesAndNewlines)
            .replacingOccurrences(of: "#", with: "")
            .uppercased()
        let length = cleaned.count
        guard length == 6 || length == 8 else { return .clear }

        var value: UInt64 = 0
        guard Scanner(string: cleaned).scanHexInt64(&value) else { return .clear }

        let r, g, b, a: Double
        if length == 6 {
            r = Double((value & 0xFF0000) >> 16) / 255.0
            g = Double((value & 0x00FF00) >> 8) / 255.0
            b = Double(value & 0x0000FF) / 255.0
            a = 1.0
        } else { // 8
            r = Double((value & 0xFF000000) >> 24) / 255.0
            g = Double((value & 0x00FF0000) >> 16) / 255.0
            b = Double((value & 0x0000FF00) >> 8) / 255.0
            a = Double(value & 0x000000FF) / 255.0
        }
        return Color(red: r, green: g, blue: b, opacity: a)
    }
}


