//
//  User.swift
//  alert-action-sheet
//
//  Created by Osinnowo Emmanuel on 25/02/2024.
//

import Foundation

struct User: Decodable, Hashable {
    var name: String
    var email: String
    var username: String
}

struct Empty: Encodable { }
