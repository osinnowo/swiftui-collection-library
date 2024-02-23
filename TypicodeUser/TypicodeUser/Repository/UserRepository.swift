//
//  UserRepository.swift
//  TypicodeUser
//
//  Created by Osinnowo Emmanuel on 23/02/2024.
//

import SwiftUI

final class UserRepository {
    
    private var networkService: NetworkService<Empty, [User]>
    
    init(networkService: NetworkService<Empty, [User]>) {
        self.networkService = networkService
    }
    
    func fetchUser() async -> [User]? {
        let result = await self.networkService.makeRequest(path: "https://jsonplaceholder.typicode.com/users")
        return try? result.get()
    }
}
