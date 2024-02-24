//
//  TypicodeUserApp.swift
//  TypicodeUser
//
//  Created by Osinnowo Emmanuel on 23/02/2024.
//

import SwiftUI

@main
struct Application: App {
    
    @Environment(\.scenePhase) private var scenePhase
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
        .onChange(of: scenePhase) { _, phase in
            switch phase {
                case .active:
                    break
                case .background:
                    break
                case .inactive:
                    break
                default:
                    break
            }
        }
    }
}

