//
//  UserViewModel.swift
//  TypicodeUser
//
//  Created by Osinnowo Emmanuel on 23/02/2024.
//

import SwiftUI

class UserViewModel: ObservableObject {
    
    @Published var users: [User] = []
    
    private var repository: UserRepository
    
    convenience init() {
        self.init(repository: UserRepository(networkService: NetworkService<Empty, [User]>()))
    }
    
    init(repository: UserRepository) {
        self.repository = repository
    }
    
    public func fetchUserFromRemote() async {
        if let fetchedUsers = await self.repository.fetchUser() {
            DispatchQueue.main.async {
                self.users = fetchedUsers
            }
        } else {
            DispatchQueue.main.async {
                self.users = [] // Ensure it's updated on the main thread even in case of failure
            }
        }
    }
}
