//
//  LandmarkDetail.swift
//  handling-user-input
//
//  Created by Osinnowo Emmanuel on 23/02/2024.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinate: landmark.locationCoordinate)
                    .frame(height: 300)
                
                CircleImage()
                    .offset(y: -80)
                    .padding(.bottom, -80)
                
                VStack(alignment: .leading) {
                    
                    Text(landmark.name)
                        .font(.title)
                        .fontDesign(.rounded)
                    
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    
                    Divider()
                    
                    Text("About \(landmark.name)")
                        .font(.subheadline)
                        .padding(.vertical, 4)
                    
                    Text(landmark.description)
                        .font(.callout)
                        .fontDesign(.rounded)
                        .foregroundStyle(.gray)
                    
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    LandmarkDetail(landmark: .init(
            id: 1001,
            name: "Turtle Rock",
            park: "Hyde Park",
            state: "United State",
            description: "Lorem Ipsum",
            imageName: "charleyrivers",
            coordinates: Landmark.Coordinates(latitude: 0.0, longitude: 0.0)
        )
    )
}
