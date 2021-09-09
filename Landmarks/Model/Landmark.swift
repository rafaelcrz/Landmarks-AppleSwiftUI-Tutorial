//
//  Landmark.swift
//  Landmarks
//
//  Created by Rafael Ramos on 01/09/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var image: Image {
        Image(imageName)
    }
    var locationCoodinate: CLLocationCoordinate2D {
        .init(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    var isFavorite: Bool
    
    private var imageName: String
    private var coordinates: Coordinates
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
