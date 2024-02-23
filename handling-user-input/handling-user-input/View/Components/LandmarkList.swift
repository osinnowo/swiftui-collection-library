//
//  LandmarkList.swift
//  handling-user-input
//
//  Created by Osinnowo Emmanuel on 23/02/2024.
//

import SwiftUI

struct LandmarkList: View {
    
    @Environment(ModelData.self) var modelData
    @State private var showFavoriteOnly = false
    
    var filteredLandmarks: [Landmark] {
        self.modelData.landmarks.filter( {(item: Landmark) -> Bool in
            return (!showFavoriteOnly || item.isFavorite)
        })
    }
    
    var landmarks: [Landmark]
    
    var body: some View {
        NavigationSplitView {
            List {
                
                Toggle(isOn: $showFavoriteOnly, label: {
                    Text("Favorites Only")
                })
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark), label: {
                        LandmarkRow(landmark: landmark)
                    })
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Image(systemName: "empty")
        }
    }
}

#Preview {
    LandmarkList(landmarks: [
        .init(
            id: 1001,
            name: "Turtle Rock",
            park: "Hyde Park",
            state: "United State",
            description: "Lorem Ipsum",
            imageName: "charleyrivers",
            coordinates: Landmark.Coordinates(latitude: 0.0, longitude: 0.0)
        )
    ])
    .environment(ModelData())
}
