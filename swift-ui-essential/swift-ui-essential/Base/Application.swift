//
//  Application.swift
//  swift-ui-essential
//
//  Created by Osinnowo Emmanuel on 07/03/2024.
//

import SwiftUI

@main
struct Application: App {
    let persistenceController = PersistenceController.shared
    
    @State private var userViewModel = UserViewModel()
    @ObservedObject private var accountViewModel = AccountViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(accountViewModel)
                .environment(userViewModel)
                
        }
    }
}
