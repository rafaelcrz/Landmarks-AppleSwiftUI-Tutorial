//
//  Landmark.swift
//  Landmarks
//
//  Created by Rafael Ramos on 01/09/21.
//

import Foundation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}
