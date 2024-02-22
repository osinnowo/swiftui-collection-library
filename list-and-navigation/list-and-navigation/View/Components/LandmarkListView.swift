//
//  LandmarkListView.swift
//  list-and-navigation
//
//  Created by Osinnowo Emmanuel on 22/02/2024.
//

import SwiftUI

struct LandmarkListView: View {
    var landmarks: [Landmark]
    
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetailView(landmark: landmark)
                } label: {
                    LandmarkRowView(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Detail")
        }
    }
}

#Preview {
    LandmarkListView(
        landmarks: [
            .init(
                id: 1001,
                name: "Charley Rivers",
                park: "Hyde Park",
                state: "United State",
                description: "Lorem Ipsum",
                imageName: "charleyrivers",
                coordinates: Landmark.Coordinates(latitude: 0.00, longitude: 0.00)
            )
        ]
    )
}
