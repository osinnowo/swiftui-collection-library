//
//  UserList.swift
//  alert-action-sheet
//
//  Created by Osinnowo Emmanuel on 25/02/2024.
//

import SwiftUI

struct UserList: View {
    @Binding var users: [User]
    var body: some View {
        List(users, id: \.email) { user in
            NavigationLink(value: user) {
                UserRow(user: user)
            }
            .listRowSeparator(.hidden)
        }
        .navigationDestination(for: User.self, destination: { item in
            Text(item.name)
        })
        .swipeActions(edge: .leading, content: {
            
        })
    }
}

#Preview {
    UserList(users: .constant(.init(
        arrayLiteral: User(
            name: "Ben Shapiro",
            email: "ben.shapiro@gmail.com",
            username: "Bret"
        )
    )))
}
