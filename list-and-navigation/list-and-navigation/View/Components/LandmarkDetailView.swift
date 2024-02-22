//
//  LandmarkDetailView.swift
//  list-and-navigation
//
//  Created by Osinnowo Emmanuel on 22/02/2024.
//

import SwiftUI


struct LandmarkDetailView: View {
    var landmark: Landmark
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinate: landmark.locationCoordinate)
                    .frame(height: 300)
                
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                    
                    HStack {
                        Text("Joshua Tree National Park")
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    Divider()
                    
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }
                .padding()
                
                Spacer()
            }
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetailView(
        landmark: .init(
            id: 1001,
            name: "Charley Rivers",
            park: "Hyde Park",
            state: "United State",
            description: "Lorem Ipsum",
            imageName: "charleyrivers",
            coordinates: Landmark.Coordinates(latitude: 0.00, longitude: 0.00)
        )
    )
}
