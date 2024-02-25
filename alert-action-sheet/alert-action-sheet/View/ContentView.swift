//
//  ContentView.swift
//  alert-action-sheet
//
//  Created by Osinnowo Emmanuel on 24/02/2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    //@StateObject var photoViewModel = PhotoViewModel()
    //@State var userViewModel = UserViewModel()
    
    @Environment(\.sharedViewModel) var viewModel
    @Environment(ContentViewModel.self) var contentViewModel
    
    @State private var showAction: Bool = false
    @State private var showAlert: Bool = false
    
    var body: some View {
        NavigationStack {
        
            UserList(users: .constant(viewModel.users))
                .alert(isPresented: .constant(viewModel.error)) { // .constant() for non-bindable property
                    Alert(
                        title: Text("Network"),
                        message: Text("Unable to fetch users. Please try again!"),
                        primaryButton: .default(Text("Retry")),
                        secondaryButton: .cancel()
                    )
                }
                .navigationTitle("Users")
        }
        .onAppear {
            print(contentViewModel.content)
        }
        .task {
            await viewModel.fetchUserRecords()
        }
    }
}

#Preview {
    ContentView()
        .environment(\.sharedViewModel, SharedViewModel())
        .environment(ContentViewModel())
}
