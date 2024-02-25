//
//  Application.swift
//  alert-action-sheet
//
//  Created by Osinnowo Emmanuel on 24/02/2024.
//

import SwiftUI

@main
struct Application: App {
    @State private var sharedViewModel = SharedViewModel()
    let persistenceController = PersistenceController.shared
    @Environment(\.scenePhase) private var scenePhase

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environment(\.sharedViewModel, sharedViewModel)
        }
        .onChange(of: scenePhase, { _, phase in
            AppStateManager.configure(using: phase)
        })
    }
}
