//
//  Account.swift
//  swift-ui-essential
//
//  Created by Osinnowo Emmanuel on 07/03/2024.
//

import Foundation

enum AccountStatus: Decodable, Hashable {
    case online
    case offline
    case `default`
}

class Account: Decodable, Identifiable, Hashable {
    var id: Int
    var name: String
    var image: String
    var username: String
    var email: String
    var phone: String
    var website: String
    var isSelected: Bool
    var status: AccountStatus
    
    public init(id: Int, name: String, image: String, username: String, email: String, phone: String, website: String, isSelected: Bool, status: AccountStatus) {
        self.id = id
        self.name = name
        self.image = image
        self.username = username
        self.email = email
        self.phone = phone
        self.website = website
        self.isSelected = isSelected
        self.status = status
    }
    
    static func == (lhs: Account, rhs: Account) -> Bool {
        return lhs.id == lhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
    }
}
