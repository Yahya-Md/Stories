//
//  HomeView.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            VStack {
                
                    ScrollView(.horizontal) {
                        HStack {
                        AddStoryButton { }
                            StoryBubbleView(imageUrl: "https://i.pravatar.cc/300?u=1")
                    }
                }
                Spacer()
            }
            .padding()
        }
    }

}

#Preview {
    HomeView()
}
