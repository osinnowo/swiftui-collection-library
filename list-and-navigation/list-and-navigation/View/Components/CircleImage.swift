//
//  CircleImage.swift
//  list-and-navigation
//
//  Created by Osinnowo Emmanuel on 22/02/2024.
//


import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .frame(width: 200, height: 200)
            .scaledToFill()
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: .init(.charleyrivers))
}
