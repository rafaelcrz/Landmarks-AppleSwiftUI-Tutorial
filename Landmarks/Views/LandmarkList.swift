//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Rafael Ramos on 01/09/21.
//

import SwiftUI

struct LandmarkListView: View {
    let viwModel: LandmarkViewModelProtocol
    var body: some View {
        List {
            LandmarkRowView(dto: .init(image: Image("stmarylake"), title: "Turle Rock"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListView(viwModel: LandmarkViewModel(bundleHelper: BundleHelper()))
    }
}
