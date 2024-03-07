//
//  UserRow.swift
//  swift-ui-essential
//
//  Created by Osinnowo Emmanuel on 07/03/2024.
//

import SwiftUI

struct UserRow: View {
    let account: Account
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            Image(String(account.id))
                .resizable()
                //.aspectRatio(contentMode: .fill)
                .scaledToFill()
                .frame(width: 70, height: 70)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding(.leading, 5)
                .overlay {
                    Circle()
                        .frame(width: 12, height: 12)
                        .offset(x: 27, y: 25)
                        .foregroundColor(
                            (account.status == .online) ? 
                            Color.green : (account.status == .offline) ?
                            Color.red : Color.gray
                        )
                }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("\(account.name)")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                
                Text("Hi! Can we meet on sunday")
                    .font(.system(size: 13, weight: .light, design: .rounded))
                    
            }
            .padding(.top, 8)
            
            Spacer()
            
            VStack {
                Text("12:50")
                    .font(.system(size: 12, weight: .light, design: .rounded))
                    
                Text("2")
                    .font(.system(size: 10, weight: .semibold, design: .rounded))
                    .frame(width: 12, height: 12)
                    .padding(.all, 3)
                    .background(.white, in: Circle())
                    .foregroundColor(account.isSelected ? .blue : .black)
                    
            }
            .padding(.top, 13)
            
            Spacer()
        }
        .frame(width: .infinity, height: 80)
        .background(account.isSelected ? 
            .blue : .lightGreyColor,
            in: RoundedRectangle(cornerRadius: 55.0)
        )
        .padding(.horizontal, 2)
        .foregroundStyle(account.isSelected ? .white : .black)
        .listRowSeparator(.hidden)
    }
}

#Preview {
    UserRow(account: Account(
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
    )
}
