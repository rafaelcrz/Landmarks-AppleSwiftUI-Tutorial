//
//  ModelData.swift
//  Landmarks
//
//  Created by Rafael Ramos on 01/09/21.
//

import Foundation
import SwiftUI

protocol LandmarkListViewModelProtocol {
    var bundleHelper: BundleHelperProtocol { get }
    func getLandmarkRowDTO(onlyFavorite: Bool) -> [LandmarkDetailDTO]
}

struct LandmarkListViewModel: LandmarkListViewModelProtocol {
    var bundleHelper: BundleHelperProtocol
    private let localFileName: String = "landmarkData"
    
    func getLandmarkRowDTO(onlyFavorite: Bool) -> [LandmarkDetailDTO] {
        return loadLocalLandmarkList().map {
            LandmarkDetailDTO(
                id: $0.id,
                latitude: $0.locationCoodinate.latitude,
                longitude: $0.locationCoodinate.longitude,
                image: $0.image,
                name: $0.name,
                park: $0.park,
                state: $0.state,
                description: $0.description,
                isFavorite: $0.isFavorite
            )
        }.filter { return !onlyFavorite || $0.isFavorite }
    }
    
    private func loadLocalLandmarkList() -> [Landmark] {
        do {
            return try bundleHelper.load(localFileName, withExtension: "json")
        } catch {
            return []
        }
    }
}
