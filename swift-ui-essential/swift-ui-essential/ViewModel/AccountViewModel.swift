//
//  AccountViewModel.swift
//  swift-ui-essential
//
//  Created by Osinnowo Emmanuel on 07/03/2024.
//

import SwiftUI

class AccountViewModel: ObservableObject {
    
    @Published private (set) var accounts: [Account] = []
    
    func initiate() {
        self.accounts = DataManager.accounts
    }
}
