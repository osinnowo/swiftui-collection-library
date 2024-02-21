//
//  creating_and_combining_viewsApp.swift
//  creating-and-combining-views
//
//  Created by Osinnowo Emmanuel on 21/02/2024.
//

import SwiftUI

@main
struct creating_and_combining_viewsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
