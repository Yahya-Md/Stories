//
//  StoryBubbleView.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

import SwiftUI

struct StoryBubbleView: View {
    let imageUrl: String
    var body: some View {
        if let url = URL(string: imageUrl) {
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
    HStack {
        StoryBubbleView(imageUrl: "https://i.pravatar.cc/300?u=1")
        StoryBubbleView(imageUrl: "")
    }
}
