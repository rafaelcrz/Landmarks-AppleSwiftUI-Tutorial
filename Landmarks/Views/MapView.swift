//
//  MapView.swift
//  Landmarks
//
//  Created by Rafael Ramos on 31/08/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    //update the map region
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: -23.6366854,
            longitude: -46.6427949),
        span: MKCoordinateSpan(
            latitudeDelta: 0.1,
            longitudeDelta: 0.2
        )
    )
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
