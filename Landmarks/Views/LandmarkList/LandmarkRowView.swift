//
//  LandmarkRowView.swift
//  Landmarks
//
//  Created by Rafael Ramos on 01/09/21.
//

import SwiftUI

struct FavoriteImage: View {
    let favorite: Bool
    
    private var imageName: String {
        favorite ? "star.fill": ""
    }
    
    var body: some View {
        Image(systemName: imageName)
            .foregroundColor(.yellow)
    }
}

struct LandMarkDTO: Identifiable {
    var id: Int
    let image: Image?
    let title: String
}

struct LandmarkRowView: View {
    let image: Image?
    let title: String
    let isFavorite: Bool
    
    var body: some View {
        HStack {
            image?
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            Text(title)
                .font(.subheadline)
            
            Spacer()
            
            FavoriteImage(favorite: isFavorite)
        }
    }
    
    
}

struct LandmarkRowView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            LandmarkRowView(image: Image("stmarylake"), title: "Stmarylake1", isFavorite: false)
        }.previewLayout(PreviewLayout.fixed(width: 400, height: 62))
    }
}
