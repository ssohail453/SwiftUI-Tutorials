//
//  Home.swift
//  SwiftTut
//
//  Created by Syed Sohail on 02/02/26.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            Text("Home")
                
            Text("Home")
                .font(.fontSize32Medium)
                .padding()
                .background(Color.Buy5)
            
            Text("\(StoredConstants.shared.appType.rawValue)")
            Spacer()
        }
    }
}

#Preview {
    Home()
}
