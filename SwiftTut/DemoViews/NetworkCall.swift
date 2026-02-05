//
//  NetworkCall.swift
//  SwiftTut
//
//  Created by Furlenco on 16/12/25.
//

import SwiftUI
import Combine
import Accessibility

struct NetworkCall: View {
    @StateObject private var viewModel = NetworkCallViewModel()
    @State var sohail: DemoStruct = DemoStruct()
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        if #available(iOS 26.0, *){
            ZStack {
//                Color.blue.opacity(0.5).ignoresSafeArea()
                VStack(alignment: .leading) {
                    Button {
                        if viewModel.users.isEmpty {
                            viewModel.fetchUsers()
                        } else {
                            viewModel.deleteUser()
                        }
                        
                    } label: {
                        Text("Fetch User List")
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .accessibilityLabel("Fetch User List")
                    
                    ForEach(0 ..< viewModel.users.count, id: \.self ) { user in
                        let userName = viewModel.users[user]
                        CardView(text: userName, subTitle: "\(userName) Card Sub Title")
                    }
                }
                .navigationBarBackButtonHidden(true)
                .toolbar(content: {
                    ToolbarItem(placement: .topBarLeading) {
                        HStack {
                            Text("Network Call")
                                .onTapGesture {
                                    dismiss()
                                }
                                .fixedSize()
                        }
                        .ignoresSafeArea()
                    }
                    
                    .sharedBackgroundVisibility(.hidden)
                })
                
                .onAppear() {
                    viewModel.fetchUsers()
                }
            }
        } else {
            ZStack {
                Color.white
                VStack(alignment: .leading) {
                    Button {
                        if viewModel.users.isEmpty {
                            viewModel.fetchUsers()
                        } else {
                            viewModel.deleteUser()
                        }
                        
                    } label: {
                        Text("Fetch User List")
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .accessibilityLabel("Fetch User List")
                    
                    ForEach(0 ..< viewModel.users.count, id: \.self ) { user in
                        let userName = viewModel.users[user]
                        CardView(text: userName, subTitle: "\(userName) Card Sub Title")
                    }
                }
                .background(Color.white)
                .navigationBarBackButtonHidden(true)
                .toolbar(content: {
                    ToolbarItem(placement: .topBarLeading) {
                        HStack {
                            Text("Network Call")
                                .onTapGesture {
                                    dismiss()
                                }
                                .fixedSize()
                        }
                    }
                })
                
                .onAppear() {
                    viewModel.fetchUsers()
                }
            }
        }

        
    }
}

#Preview {
    NetworkCall()
}

#Preview("CardView Preview") {
    CardView2(text: "Sample Card")
}

class NetworkCallViewModel2: ObservableObject {
    @Published var users: [String] = []

    func fetchUsers() {
        self.users = ["Furlenco", "John", "Jane"]
        print("A")
    }
    func deleteUser() {
        self.users.removeAll()
    }
}

struct DemoStruct {
    var name: String = "Sohail"
    
    func getName() {
        print(self.name)
    }
}


struct CardView2: View {
    var text: String
    var subTitle: String = "Sample Sub Title"
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "person.crop.circle")
                Text(text)
            }
            .font(.largeTitle)
//            .bold()
            Text(subTitle)
                .accessibilityLabel("\(subTitle)")
            
        }
        .foregroundStyle(Color.white)
        .padding()
        .background(Color.blue)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .accessibilityHint("Hint accessibility")
    }
}


//                    Text(viewModel.users[user])
//                        .accessibilityElement(children: .combine)
//                        .accessibilityCustomContent("age", "12", importance: .high)
//                        .accessibilityLabel("Accessible test User \(viewModel.users[user])")
//                        .accessibilityHint("Accessible hint test")
//                        .accessibilityValue("Value test")
