//
//  LandmarkDetailDTO.swift
//  Landmarks
//
//  Created by Rafael Ramos on 04/09/21.
//

import SwiftUI

struct LandmarkDetailDTO: Identifiable {
    var id: Int
    var latitude: Double
    var longitude: Double
    var image: Image
    var name: String
    var park: String
    var state: String
    var description: String
}
