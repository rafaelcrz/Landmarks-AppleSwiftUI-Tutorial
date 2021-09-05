//
//  ModelData.swift
//  Landmarks
//
//  Created by Rafael Ramos on 01/09/21.
//

import Foundation

protocol LandmarkListViewModelProtocol {
    var bundleHelper: BundleHelperProtocol { get }
    func getLandmarkRowDTO() -> [LandMarkDTO]
}

struct LandmarkListViewModel: LandmarkListViewModelProtocol {
    var bundleHelper: BundleHelperProtocol
    private let localFileName: String = "landmarkData"
    
    func getLandmarkRowDTO() -> [LandMarkDTO] {
        do {
            let landMarks: [Landmark] = try bundleHelper.load(localFileName, withExtension: "json")
            return landMarks.map {
                LandMarkDTO(id: $0.id, image: $0.image, title: $0.name)
            }
        } catch {
            return []
        }
    }
}
