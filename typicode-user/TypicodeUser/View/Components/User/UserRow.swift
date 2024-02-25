//
//  UserRow.swift
//  TypicodeUser
//
//  Created by Osinnowo Emmanuel on 23/02/2024.
//

import SwiftUI

struct UserRow: View {
    var user: User
    
    var body: some View {
        HStack(alignment: .top) {
            Image(user.username)
                .resizable()
                .frame(width: 80, height: 80)
                .scaledToFill()
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack(alignment: .leading) {
                Text("\(user.name)")
                    .font(.title2)
                .fontDesign(.rounded)
                
                Group {
                    Text("\(user.email)")
                    Text("\(user.phone)")
                }
                .font(.callout)
                .fontDesign(.rounded)
                .foregroundStyle(.gray)
                
            }
            .padding(.leading, 10)
            Spacer()
        }
            
    }
}

#Preview {
    UserRow(user: .init(
            username: "Antonette",
            name: "Leanne Graham",
            email: "antonette@gmail.com",
            phone: "1-770-736-8031 x56442"
        )
    )
}
