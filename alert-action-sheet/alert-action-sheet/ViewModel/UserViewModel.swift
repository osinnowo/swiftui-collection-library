//
//  UserViewModel.swift
//  alert-action-sheet
//
//  Created by Osinnowo Emmanuel on 25/02/2024.
//

import SwiftUI
import Observation


@Observable
class UserViewModel {
    
    //MARK: - Published Property Wrapper
    private (set) var users: [User] = []
    var error: Bool = false
    
    //MARK: - Repository & Service
    private var repository = UserRepository()
    
    //MARK: - Methods
    func fetchUserRecords() async {
        let result = await repository.fetchUsers()
        switch result {
            case .success(let users):
                self.users = users
                self.error = true
            case .failure(_):
                self.error = true
        }
    }
}

