//
//  Application.swift
//  alert-action-sheet
//
//  Created by Osinnowo Emmanuel on 24/02/2024.
//

import SwiftUI

@main
struct Application: App {
    //MARK: - AppEvent
    @State private var sharedViewModel = SharedViewModel()
    @State private var contentViewModel = ContentViewModel()
    
    @Environment(\.scenePhase) private var scenePhase
    
    init() {
       //Firebase.init()
    }
    
    //MARK: - Property
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environment(\.sharedViewModel, sharedViewModel)
                .environment(contentViewModel)
        }
        .onChange(of: scenePhase, { _, phase in
            AppStateManager.configure(using: phase)
        })
    }
}
