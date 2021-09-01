//
//  LandmarkListView.swift
//  Landmarks
//
//  Created by Rafael Ramos on 01/09/21.
//

import SwiftUI

struct LandmarkListView: View {
    let viewModel: LandmarkViewModelProtocol
    
    var body: some View {
        List(viewModel.getLandmarkRowDTO()) {
            LandmarkRowView(dto: $0)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListView(viewModel: LandmarkViewModel(bundleHelper: BundleHelper()))
    }
}
