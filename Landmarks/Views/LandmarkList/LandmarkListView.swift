//
//  LandmarkListView.swift
//  Landmarks
//
//  Created by Rafael Ramos on 01/09/21.
//

import SwiftUI

struct LandmarkListView: View {
    @State private var showFavoriteOnly: Bool = false
    
    let viewModel: LandmarkListViewModelProtocol
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoriteOnly, label: {
                    Text("Favorites Only")
                        .font(.subheadline)
                })
                
                ForEach(viewModel.getLandmarkRowDTO(onlyFavorite: showFavoriteOnly)) { landmark in
                    NavigationLink(destination: LandmarksDetail(
                        dto: landmark
                    )) {
                        LandmarkRowView(image: landmark.image, title: landmark.name, isFavorite: landmark.isFavorite)
                    }
                }
            }.navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)"], id: \.self) {
            LandmarkListView(viewModel: LandmarkListViewModel(bundleHelper: BundleHelper()))
                .previewDevice(PreviewDevice(rawValue: $0))
                .previewDisplayName($0)
        }
    }
}
