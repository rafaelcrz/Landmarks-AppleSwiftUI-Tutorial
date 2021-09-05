//
//  MapView.swift
//  Landmarks
//
//  Created by Rafael Ramos on 31/08/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    var settings: MapDTO
    
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear(perform: {
                setRegion()
            })
    }
    
    private func setRegion() {
        region = MKCoordinateRegion(
            center: getLocation(),
            span: getZoomLevel()
        )
    }
    
    private func getLocation() -> CLLocationCoordinate2D {
        return .init(latitude: settings.latitude, longitude: settings.longiture)
    }
    
    private func getZoomLevel() -> MKCoordinateSpan {
        let latitude: Double = settings.zoomLevel.latitudeDelta
        let longitude: Double = settings.zoomLevel.longitudeDetal
        
        return .init(latitudeDelta: latitude, longitudeDelta: longitude)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(settings: MapDTO(
            latitude: -23.6366854,
            longiture: -46.6427949
        ))
    }
}
