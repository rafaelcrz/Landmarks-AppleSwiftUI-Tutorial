//
//  Detail.swift
//  Landmarks
//
//  Created by Rafael Ramos on 04/09/21.
//

import SwiftUI
import MapKit

struct LandmarksDetail: View {
    var landMark: LandmarkDetailDTO
    
    var body: some View {
        VStack {
            MapView(settings: .init(latitude: 1, longiture: 1))
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImageView(image: Image(""))
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("title")
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
                
            }.padding()
            
            Spacer()
        }
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksDetail(landMark: LandmarkDetailDTO())
    }
}
