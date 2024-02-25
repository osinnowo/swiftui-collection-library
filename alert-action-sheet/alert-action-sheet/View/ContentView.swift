//
//  ContentView.swift
//  alert-action-sheet
//
//  Created by Osinnowo Emmanuel on 24/02/2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @StateObject var photoViewModel = PhotoViewModel()
    @State var userViewModel = UserViewModel()
    @Environment(\.sharedViewModel) var viewModel
    
    @State private var showAction: Bool = false
    @State private var showAlert: Bool = false
    
    var body: some View {
        List(viewModel.users, id: \.email) { user in
            Text(user.name)
        }
        .alert(isPresented: .constant(viewModel.error)) { // .constant() for non-bindable property
            Alert(
                title: Text("Network"),
                message: Text("Unable to fetch users. Please try again!"),
                primaryButton: .default(Text("Retry")),
                secondaryButton: .cancel()
            )
        }
        .task {
            await viewModel.fetchUserRecords()
        }
    }
}

#Preview {
    ContentView()
        .environment(\.sharedViewModel, SharedViewModel())
}
