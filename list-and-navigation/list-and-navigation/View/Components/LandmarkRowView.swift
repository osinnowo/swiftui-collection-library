//
//  LandmarkRowView.swift
//  list-and-navigation
//
//  Created by Osinnowo Emmanuel on 22/02/2024.
//

import SwiftUI

struct LandmarkRowView: View {
    var landmark: Landmark
    
    var body: some View {
        HStack(alignment: .center) {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .scaledToFill()
                .clipShape(RoundedRectangle(cornerRadius: 8))
                
            Text(landmark.name)
                .font(.title2)
                .fontDesign(.rounded)
            Spacer()
        }
    }
}

#Preview {
    Group {
        LandmarkRowView(landmark: .init(
                id: 1001,
                name: "Charley Rivers",
                park: "Hyde Park",
                state: "United State",
                description: "Lorem Ipsum",
                imageName: "charleyrivers",
                coordinates: Landmark.Coordinates(
                    latitude: 0.00,
                    longitude: 0.00
                )
            )
        )
    }
}
