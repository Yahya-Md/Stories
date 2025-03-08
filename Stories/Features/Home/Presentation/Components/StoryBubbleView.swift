//
//  StoryBubbleView.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

import SwiftUI

struct StoryBubbleView: View {
    let imageURL: String
    @State var isSeen: Bool = false
    let onTap: (()-> Void)
    var body: some View {
        imageBubble
            .padding(2)
            .background(
                LinearGradient(colors: [.red, .orange], startPoint: .top, endPoint: .bottom)
                    .clipShape(Circle())
                    .opacity(isSeen ? 0 : 1)
            )
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.3)) {
                    isSeen = true
                }
                onTap()
            }
    }
}

// MARK: - Helpers
private extension StoryBubbleView {
    private var imageBubble: some View {
        CircularImageView(imageURL: imageURL)
    }
}

#Preview {
    let storyImage = PreviewsData.makeImageUrl()
    HStack {
        StoryBubbleView(imageURL: storyImage) {}
        StoryBubbleView(imageURL: storyImage, isSeen: true) {}
        
        StoryBubbleView(imageURL: "") {}
        StoryBubbleView(imageURL: "", isSeen: true) {}
    }
}
