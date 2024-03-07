//
//  UserViewModel.swift
//  swift-ui-essential
//
//  Created by Osinnowo Emmanuel on 07/03/2024.
//

import SwiftUI
import Observation

@Observable
class UserViewModel {
    var accounts: [Account] = [Account]()
    
    func initiate() {
        self.accounts = DataManager.accounts
    }
}
