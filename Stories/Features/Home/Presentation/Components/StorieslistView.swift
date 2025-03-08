//
//  StorieslistView.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

import SwiftUI

struct StorieslistView: View {
    @StateObject var viewModel: StoriesViewModel
    var body: some View {
        
        ScrollView(.horizontal) {
            PaginationContentView(source: viewModel) { userStories in
                HStack {
                    AddStoryButton { }
                    ForEach(userStories) { item in
                        StoryBubbleView(imageURL: item.profilePicture) {
                            
                        }
                    }
                }
            }
        }
        .padding(.vertical)
    }
}
