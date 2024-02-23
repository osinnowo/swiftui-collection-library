//
//  Landmark.swift
//  handling-user-input
//
//  Created by Osinnowo Emmanuel on 23/02/2024.
//

import SwiftUI
import CoreLocation

public struct Landmark: Hashable, Codable, Identifiable {
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    public var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
    private var coordinates: Coordinates
    
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    init(
        id: Int,
        name: String,
        park: String,
        state: String,
        description: String,
        imageName: String,
        coordinates: Coordinates,
        isFavorite: Bool = false
    ) {
        self.id = id
        self.name = name
        self.park = park
        self.state = state
        self.description = description
        self.imageName = imageName
        self.coordinates = coordinates
        self.isFavorite = isFavorite
    }
}
