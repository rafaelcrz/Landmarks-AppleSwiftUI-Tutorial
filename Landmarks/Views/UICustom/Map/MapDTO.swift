//
//  MapDTO.swift
//  Landmarks
//
//  Created by Rafael Ramos on 04/09/21.
//

import Foundation

struct MapDTO {
    var latitude: Double
    var longiture: Double
    var zoomLevel: ZoomLevel = .init()
    
    struct ZoomLevel {
        var latitudeDelta: Double = 0.2
        var longitudeDetal: Double = 0.2
    }
}
