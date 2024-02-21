//
//  CircleImage.swift
//  creating-and-combining-views
//
//  Created by Osinnowo Emmanuel on 21/02/2024.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("image3")
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
    CircleImage()
}
