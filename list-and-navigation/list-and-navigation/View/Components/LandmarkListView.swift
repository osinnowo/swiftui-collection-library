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
            .init(name: "Turtle Rock", imageName: "charleyrivers"),
            .init(name: "Icy Bay", imageName: "icybay"),
            .init(name: "Hidden Lake", imageName: "hiddenlake"),
            .init(name: "Lake McDonald", imageName: "lakemcdonald"),
        ]
    )
}
