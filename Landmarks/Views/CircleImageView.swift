//
//  CircleImageView.swift
//  Landmarks
//
//  Created by Rafael Ramos on 31/08/21.
//

import SwiftUI

//overlay
struct CircleImageView: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
