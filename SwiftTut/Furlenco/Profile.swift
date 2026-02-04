//
//  Profile.swift
//  SwiftTut
//
//  Created by Syed Sohail on 02/02/26.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack {
            Text("Profile")
                
            Text("Profile")
                .font(.fontSize32Medium)
                .padding()
                .background(Color.Buy5)
            
            Text("\(StoredConstants.shared.appType.rawValue)")
            
            
            Spacer()
        }
    }
}

#Preview {
    Profile()
}
