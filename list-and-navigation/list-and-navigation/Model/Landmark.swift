//
//  Landmark.swift
//  list-and-navigation
//
//  Created by Osinnowo Emmanuel on 22/02/2024.
//

import SwiftUI
import CoreLocation

public struct Landmark: Hashable, Codable, Identifiable {
    public var id: String
    var name: String
    var park: String
    var state: String
    var description: String
    
    init(name: String, imageName: String) {
        self.id = name
        self.name = name
        self.park = ""
        self.state = ""
        self.description = ""
        self.imageName = imageName
        self.coordinates = Coordinates(latitude: 0.00, longitude: 0.00)
    }
    
    private var coordinates: Coordinates
    private var imageName: String
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    var image: Image {
        Image(imageName)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
