//
//  UserList.swift
//  swift-ui-essential
//
//  Created by Osinnowo Emmanuel on 07/03/2024.
//

import SwiftUI

struct UserList: View {
    
    var accounts: [Account]
    
    var body: some View {
//        List(accounts) { item in
//            NavigationLink {
//                Text("\(item.name)")
//            } label: {
//                UserRow(account: item)
//            }
//            .listRowSeparator(.hidden)
//            .buttonStyle(PlainButtonStyle())
//        }
//        .listStyle(.plain)
//        .padding(.all, 5)
        
        List(accounts) { item in
            UserRow(account: item)
        }
        .navigationDestination(for: Account.self, destination: { item in
            Text("\(item.name)")
        })
        .listStyle(.plain)
        .padding(.all, .zero)
    }
}

#Preview {
    UserList(
        accounts: [
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
                )
        ]
    )
}
