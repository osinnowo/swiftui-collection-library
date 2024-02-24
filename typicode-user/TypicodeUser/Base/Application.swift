//
//  TypicodeUserApp.swift
//  TypicodeUser
//
//  Created by Osinnowo Emmanuel on 23/02/2024.
//

import SwiftUI

@main
struct Application: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

