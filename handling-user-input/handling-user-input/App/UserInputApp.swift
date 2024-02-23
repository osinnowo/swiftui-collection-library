//
//  UserInputApp.swift
//  handling-user-input
//
//  Created by Osinnowo Emmanuel on 23/02/2024.
//

import SwiftUI

@main
struct UserInputApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
