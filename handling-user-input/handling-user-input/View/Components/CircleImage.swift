//
//  CircleImage.swift
//  handling-user-input
//
//  Created by Osinnowo Emmanuel on 23/02/2024.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image(.charleyrivers)
            .resizable()
            .frame(width: 150, height: 150)
            .scaledToFit()
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
