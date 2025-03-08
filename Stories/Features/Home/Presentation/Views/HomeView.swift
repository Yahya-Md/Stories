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
                HStack {                    ScrollView(.horizontal) {
                        AddStoryButton { }
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
