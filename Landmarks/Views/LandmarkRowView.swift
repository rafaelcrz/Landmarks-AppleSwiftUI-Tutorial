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
    static var previews: some View {
        Group {
            LandmarkRowView(dto: .init(image: nil, title: "teste"))
                .previewLayout(.fixed(width: 300, height: 70))
        }
        
        List {
            LandmarkRowView(dto: .init(image: .init("stmarylake"), title: "Stmarylake1"))
            LandmarkRowView(dto: .init(image: .init("stmarylake"), title: "Stmarylake2"))
            LandmarkRowView(dto: .init(image: .init("stmarylake"), title: "Stmarylake3"))
            LandmarkRowView(dto: .init(image: .init("stmarylake"), title: "Stmarylake4"))
            LandmarkRowView(dto: .init(image: .init("stmarylake"), title: "Stmarylake5"))
            LandmarkRowView(dto: .init(image: .init("stmarylake"), title: "Stmarylake6"))
        }
    }
}
