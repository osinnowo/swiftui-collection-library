//
//  EnvironmentValues.swift
//  alert-action-sheet
//
//  Created by Osinnowo Emmanuel on 25/02/2024.
//

import SwiftUI

extension EnvironmentValues {
    var sharedViewModel: SharedViewModel {
            get { self[SharedKey.self] }
            set { self[SharedKey.self] = newValue }
    }
}

private struct SharedKey: EnvironmentKey {
    static var defaultValue: SharedViewModel = SharedViewModel()
}
