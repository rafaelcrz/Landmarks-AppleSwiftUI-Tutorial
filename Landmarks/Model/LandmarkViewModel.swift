//
//  ModelData.swift
//  Landmarks
//
//  Created by Rafael Ramos on 01/09/21.
//

import Foundation

struct LandmarkViewModel {
    var bundleHelper: BundleHelperProtocol
    private let localFileName: String = "landmarkData"
    
    func getLandmarks() -> [Landmark] {
        do {
            return try bundleHelper.load(localFileName, withExtension: "json")
        } catch {
            return []
        }
    }
}
