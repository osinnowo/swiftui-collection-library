//
//  ContentView.swift
//  TypicodeUser
//
//  Created by Osinnowo Emmanuel on 23/02/2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @StateObject var viewModel = UserViewModel()
    
    var body: some View {
        NavigationSplitView {
            List(viewModel.users, id: \.email) { user in
                NavigationLink {
                    Text("\(user.name)")
                } label: {
                    Text("\(user.email)")
                }
            }
            .navigationTitle("Users")
            .navigationBarTitleDisplayMode(.large)
            .onAppear(perform: {
                Task {
                    await viewModel.fetchUserFromRemote()
                }
            })
        } detail: {
            Text("Select User")
        }
    }
}

#Preview {
    ContentView()
}
