//
//  Detail.swift
//  Landmarks
//
//  Created by Rafael Ramos on 04/09/21.
//

import SwiftUI
import MapKit

struct LandmarksDetail: View {
    var dto: LandmarkDetailDTO
    
    var body: some View {
        VStack {
            MapView(settings: .init(latitude: dto.latitude, longiture: dto.longitude))
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImageView(image: dto.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(dto.name)
                    .font(.title)
                
                HStack {
                    Text(dto.park)
                    Spacer()
                    Text(dto.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text(dto.name)
                    .font(.title2)
                Text(dto.description)
                
            }.padding()
            
            Spacer()
        }
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksDetail(dto: LandmarkDetailDTO(
            id: 1,
            latitude: 2,
            longitude: 2,
            image: Image(""),
            name: "name",
            park: "park",
            state: "state",
            description: "description"
        ))
    }
}
