//
//  AppStateManager.swift
//  alert-action-sheet
//
//  Created by Osinnowo Emmanuel on 24/02/2024.
//

import SwiftUI

final class AppStateManager {
    static private (set) var state: AppState = .None
    var shared: AppStateManager = AppStateManager()
    
    private init() {}
    
    public static func configure(using scenePhase: ScenePhase) {
        switch scenePhase {
            case .active:
                state = .Active
            case .inactive:
                state = .InActive
            case .background:
                state = .Background
            default:
                state = .None
        }
    }
    
    enum AppState: String {
        case Active
        case InActive
        case Background
        case None
    }
}
