//
//  UserRow.swift
//  alert-action-sheet
//
//  Created by Osinnowo Emmanuel on 25/02/2024.
//

import SwiftUI

struct UserRow: View {
    let user: User
    var body: some View {
        HStack {
            Image(user.username)
                .resizable()
                .frame(width: 80, height: 80)
                .aspectRatio(contentMode: .fill)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack(alignment: .leading, content: {
                Text(user.name)
                    .font(.headline)
                Text("@\(user.username)".lowercased())
                    .foregroundStyle(.gray)
                    
                Text(user.email.lowercased())
                    .font(.system(size: 15))
                    .foregroundStyle(.gray)
            })
            .fontDesign(.rounded)
            .padding(.leading, 10)
            
            Spacer()
        }
    }
}

#Preview {
    UserRow(user: User(
        name: "Ben Shapiro",
        email: "ben.shapiro@gmail.com",
        username: "Bret")
    )
}

