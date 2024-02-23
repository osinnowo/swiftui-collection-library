//
//  UserList.swift
//  TypicodeUser
//
//  Created by Osinnowo Emmanuel on 23/02/2024.
//

import SwiftUI

struct UserList: View {
    var users: [User]
    var body: some View {
        List(users, id: \.email) { user in
            NavigationLink {
                Text("\(user.name)")
            } label: {
                UserRow(user: user)
            }
        }
    }
}

#Preview {
    UserList(users: [
        .init(
                username: "Antonette",
                name: "Leanne Graham",
                email: "antonette@gmail.com",
                phone: "1-770-736-8031 x56442"
            )
    ])
}
