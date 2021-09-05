//
//  LandmarkListView.swift
//  Landmarks
//
//  Created by Rafael Ramos on 01/09/21.
//

import SwiftUI

struct LandmarkListView: View {
    let viewModel: LandmarkListViewModelProtocol
    
    var body: some View {
        NavigationView {
            List(viewModel.getLandmarkRowDTO()) { landmark in
                NavigationLink(destination: LandmarksDetail(
                    dto: landmark
                )) {
                    LandmarkRowView(image: landmark.image, title: landmark.name)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListView(viewModel: LandmarkListViewModel(bundleHelper: BundleHelper()))
    }
}
