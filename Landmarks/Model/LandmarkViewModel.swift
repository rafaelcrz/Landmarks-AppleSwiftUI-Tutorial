//
//  ModelData.swift
//  Landmarks
//
//  Created by Rafael Ramos on 01/09/21.
//

import Foundation

protocol LandmarkViewModelProtocol {
    var bundleHelper: BundleHelperProtocol { get }
    func getLandmarkRowDTO() -> [LandMarkRowDTO]
}

struct LandmarkViewModel: LandmarkViewModelProtocol {
    var bundleHelper: BundleHelperProtocol
    private let localFileName: String = "landmarkData"
    
    func getLandmarkRowDTO() -> [LandMarkRowDTO] {
        do {
            let landMarks: [Landmark] = try bundleHelper.load(localFileName, withExtension: "json")
            return landMarks.map {
                LandMarkRowDTO(image: $0.image, title: $0.name)
            }
        } catch {
            return []
        }
    }
}
