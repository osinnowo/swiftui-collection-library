//
//  LandmarkRow.swift
//  handling-user-input
//
//  Created by Osinnowo Emmanuel on 23/02/2024.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .scaledToFill()
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            Text(landmark.name)
                .font(.system(size: 21, weight: .regular, design: .rounded))
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview {
    LandmarkRow(landmark: .init(
            id: 1001,
            name: "Turtle Rock",
            park: "Hyde Park",
            state: "United State",
            description: "Lorem Ipsum",
            imageName: "charleyrivers",
            coordinates: Landmark.Coordinates(
                latitude: 0.0,
                longitude: 0.0
            )
        )
    )
}
