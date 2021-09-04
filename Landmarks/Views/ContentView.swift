//
//  ContentView.swift
//  Landmarks
//
//  Created by Rafael Ramos on 31/08/21.
//

import SwiftUI

struct ContentView: View {
    let viewModel: LandmarkViewModelProtocol = LandmarkViewModel(
        bundleHelper: BundleHelper()
    )
    
    var body: some View {
        LandmarkListView(viewModel: viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
