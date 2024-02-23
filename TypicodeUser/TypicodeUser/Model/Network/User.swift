//
//  User.swift
//  TypicodeUser
//
//  Created by Osinnowo Emmanuel on 23/02/2024.
//

import Foundation

struct User: Decodable {
    var username: String
    var name: String
    var email: String
}

struct Empty: Encodable {}
