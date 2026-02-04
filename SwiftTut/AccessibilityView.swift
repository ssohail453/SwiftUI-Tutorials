//
//  AccessibilityView.swift
//  SwiftTut
//
//  Created by Syed Sohail on 17/12/25.
//
import SwiftUI
import Combine

struct AccessibilityView: View {
    @State  var isActive: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Form {
                Section {
                    Toggle("Volume", isOn: $isActive)
                        .accessibilityLabel(Text("Volume button is \(isActive ? "on" : "off")"))
                    HStack {
                        Text("Toggle button")
                        Spacer()
                        Text("\(isActive ? "on" : "off")")
                    }
                    .accessibilityHidden(true)
                    .onTapGesture {
                        isActive.toggle()
                    }
                    
                } header: {
                    Text("Settings")
                }
                
//                Section {
//                    Button {
//                        
//                    } label: {
//                        Text("Favorite")
//                    }
//                    
//                    Image(systemName: "star.fill")
//                        .foregroundStyle(Color.yellow)
//                        .accessibilityRemoveTraits(.isImage)
//                        .accessibilityAddTraits(.isButton)
//                        .accessibilityLabel("Star Button")
//                        .onTapGesture {
//                            print("Star button tapped")
//                        }
//                    
//                    Text("Favorite")
//                        
//                } header: {
//                    Text("Application")
//                }
                
                VStack(alignment: .leading) {
                    Text("Content")
                        .foregroundStyle(.secondary)
                        .accessibilityHidden(true)
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack {
                            ForEach(1..<10) { index in
                                CardView(text: "Card \(index)", subTitle: "Sub title \(index)")
                            }
                        }
                    }
                }
                
                RoundedRectangle(cornerRadius: 80)
                    .frame(height: 50)
                RoundedRectangle(cornerRadius: 40)
                    .frame(height: 50)
                Text("Sohail")
                    .addCustomFontAndColor(font: AppFonts.H11ARegular.fontStyle)
                    .padding(.top,20)
                
            }
            
            
        }
        
    }
}


#Preview {
    AccessibilityView()
}

class NetworkCallViewModel: ObservableObject {
    @Published var users: [String] = []

    func fetchUsers() {
        users = ["Furlenco", "John", "Jane"]
    }

    func deleteUser() {
        users.removeAll()
    }
}

struct CardView: View {
    var text: String
    var subTitle: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {

            HStack {
                Image(systemName: "person.crop.circle")
                    .accessibilityHidden(true) // decorative

                Text(text)
                    .font(.title)
                    .bold()
            }

            Text(subTitle)
                .font(.body)
        }
        .foregroundStyle(.white)
        .padding()
        .background(Color.blue)
        .clipShape(RoundedRectangle(cornerRadius: 12))

        // Card behaves as ONE element
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(text)
        .accessibilityValue(subTitle)
        .accessibilityHint("User information card")
    }
}
