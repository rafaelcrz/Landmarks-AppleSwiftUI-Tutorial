//
//  CircleImageView.swift
//  Landmarks
//
//  Created by Rafael Ramos on 31/08/21.
//

import SwiftUI

//overlay
struct CircleImageView: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image: Image("twinlake"))
    }
}
