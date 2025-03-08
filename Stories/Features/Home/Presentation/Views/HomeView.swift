//
//  HomeView.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel: StoriesViewModel
    
    init(
        viewModel: @autoclosure @escaping () -> StoriesViewModel
    ) {
        _viewModel = StateObject(wrappedValue: viewModel())
    }
    var body: some View {
        ZStack {
            VStack {
                StorieslistView(viewModel: viewModel)
                Spacer()
                
            }
        }
    }
    
}

#Preview {
    //    HomeView()
}
