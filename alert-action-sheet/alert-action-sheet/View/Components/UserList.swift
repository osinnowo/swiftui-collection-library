//
//  UserList.swift
//  alert-action-sheet
//
//  Created by Osinnowo Emmanuel on 25/02/2024.
//

import SwiftUI

struct UserList: View {
    @Environment(\.dismiss) var dismss
    @Binding var users: [User]
    
    var body: some View {
        List {
            ForEach(users.indices, id: \.self) { index in
                NavigationLink(value: users[index]) {
                    UserRow(user: users[index])
                }
                .swipeActions(edge: .trailing, allowsFullSwipe: true, content: {
                    Button {
                        users.remove(at: index)
                    } label: {
                        Image(systemName: "heart")
                    }
                    .tint(.green)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                    }
                    .tint(.orange)
                    
                })
                .contextMenu(ContextMenu(menuItems: {
                    Button {
                        print("Reserve a table")
                    } label: {
                        HStack {
                            Text("Reserve a table")
                            Image(systemName: "phone")
                        }
                    }
                    
                    Button {
                        print("Remove from favorite clicked!")
                    } label: {
                        HStack {
                            Text("Remove from favorite")
                            Image(systemName: "heart")
                        }
                    }
                }))
            }
            .listRowSeparator(.hidden)
//            .onDelete(perform: { indexSet in
//                users.remove(atOffsets: indexSet)
//            })
            
        }
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
