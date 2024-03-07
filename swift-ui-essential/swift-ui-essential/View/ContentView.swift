//
//  ContentView.swift
//  swift-ui-essential
//
//  Created by Osinnowo Emmanuel on 07/03/2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    //@StateObject private var accountViewModel = AccountViewModel()
    @Environment(UserViewModel.self) private var userViewModel: UserViewModel
    @EnvironmentObject private var accountViewModel: AccountViewModel
    
    var body: some View {
        NavigationView {
            UserList(accounts: userViewModel.accounts)
                .onAppear(perform: {
                    self.userViewModel.initiate()
            })
            .navigationTitle("Account")
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(AccountViewModel())
        .environment(UserViewModel())
}


