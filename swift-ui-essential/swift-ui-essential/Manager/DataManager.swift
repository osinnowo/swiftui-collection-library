//
//  DataManager.swift
//  swift-ui-essential
//
//  Created by Osinnowo Emmanuel on 07/03/2024.
//

import SwiftUI

actor DataManager {
    public static var accounts: [Account] = [
        Account(
            id: 1,
            name: "James Antonette",
            image: "Antonette",
            username: "Bricks",
            email: "hellen.bricks@gmail.com",
            phone: "+320-238-7447-12",
            website: "www.hellenbricks.com",
            isSelected: false,
            status: .offline
        ),
        Account(
            id: 2,
            name: "Jamie Delphine",
            image: "Delphine",
            username: "Bricks",
            email: "hellen.bricks@gmail.com",
            phone: "+320-238-7447-12",
            website: "www.hellenbricks.com",
            isSelected: false,
            status: .online
        ),
        Account(
            id: 3,
            name: "Kamren Hugges",
            image: "Kamren",
            username: "Bricks",
            email: "hellen.bricks@gmail.com",
            phone: "+320-238-7447-12",
            website: "www.hellenbricks.com",
            isSelected: false,
            status: .online
        ),
        Account(
            id: 4,
            name: "Moriah Stanton",
            image: "Moriah.Stanton",
            username: "Bricks",
            email: "hellen.bricks@gmail.com",
            phone: "+320-238-7447-12",
            website: "www.hellenbricks.com",
            isSelected: false,
            status: .default
        ),
        Account(
            id: 5,
            name: "Elwyn Skiles",
            image: "Elwyn.Skiles",
            username: "Bricks",
            email: "hellen.bricks@gmail.com",
            phone: "+320-238-7447-12",
            website: "www.hellenbricks.com",
            isSelected: false,
            status: .default
        ),
        Account(
            id: 6,
            name: "George Smith",
            image: "7792d80f3059ffa0d6c6ccc510e54e1d",
            username: "Bricks",
            email: "hellen.bricks@gmail.com",
            phone: "+320-238-7447-12",
            website: "www.hellenbricks.com",
            isSelected: false,
            status: .default
        ),
        Account(
            id: 7,
            name: "Leopoldo Corkery",
            image: "Leopoldo_Corkery",
            username: "Bricks",
            email: "hellen.bricks@gmail.com",
            phone: "+320-238-7447-12",
            website: "www.hellenbricks.com",
            isSelected: false,
            status: .offline
        )
    ]
}
