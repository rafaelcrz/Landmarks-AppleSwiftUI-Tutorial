//
//  LandmarkRowView.swift
//  Landmarks
//
//  Created by Rafael Ramos on 01/09/21.
//

import SwiftUI

struct LandMarkRowDTO: Identifiable {
    var id: String = UUID().uuidString
    let image: Image?
    let title: String
}

struct LandmarkRowView: View {
    let dto: LandMarkRowDTO
    
    var body: some View {
        HStack {
            dto.image?
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            Text(dto.title)
                .font(.subheadline)
            
            Spacer()
        }
    }
}

struct LandmarkRowView_Previews: PreviewProvider {
    static var viewModel: LandmarkViewModel = .init(
        bundleHelper: BundleHelper()
    )
    
    static var landMarkRows: [LandMarkRowDTO] = viewModel.getLandmarks().map {
        LandMarkRowDTO(image: $0.image, title: $0.name)
    }
    
    static var previews: some View {
        Group {
            LandmarkRowView(dto: .init(image: nil, title: "teste"))
                .previewLayout(.fixed(width: 300, height: 70))
        }
        
        List(landMarkRows) {
            LandmarkRowView(dto: $0)
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
