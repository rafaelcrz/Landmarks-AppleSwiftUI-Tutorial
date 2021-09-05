//
//  LandmarkRowView.swift
//  Landmarks
//
//  Created by Rafael Ramos on 01/09/21.
//

import SwiftUI

struct LandMarkDTO: Identifiable {
    var id: Int
    let image: Image?
    let title: String
}

struct LandmarkRowView: View {
    let image: Image?
    let title: String
    
    var body: some View {
        HStack {
            image?
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            Text(title)
                .font(.subheadline)
            
            Spacer()
        }
    }
}

struct LandmarkRowView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            LandmarkRowView(image: Image("stmarylake"), title: "Stmarylake1")
        }
    }
}
