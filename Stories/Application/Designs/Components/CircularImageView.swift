//
//  CircularImageView.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

import SwiftUI

struct CircularImageView: View {
    let imageURL: String
    
    var body: some View {
        if let url = URL(string: imageURL) {
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
            } placeholder: {
                placeHolderImage
            }
        } else {
            placeHolderImage
        }
    }
    
    var placeHolderImage: some View {
        Circle()
            .fill(Color.blue)
            .frame(width: 50, height: 50)
    }
}

#Preview {
    CircularImageView(imageURL: PreviewsData.makeImageUrl())
}
