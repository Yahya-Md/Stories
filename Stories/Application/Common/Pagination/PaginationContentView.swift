//
//  AsyncContentView.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//


import SwiftUI

struct PaginationContentView<Source: LoadableObject, Content: View>: View {
    @ObservedObject var source: Source
    var content: (Source.Output) -> Content
    
    var body: some View {
        switch source.state {
        case .idle:
            Color.clear.onAppear(perform: source.load)
        case .loading:
            ProgressView()
        case .failed(let error):
            ErrorView(error: error?.localizedDescription)
        case .loaded(let output):
            mainContent(output)
        }
    }
    
    
    private func mainContent(_ output: Source.Output) -> some View {
        VStack(spacing: 0) {
            content(output)
            if source.isLoadingMore {
                paginationLoadingView
            } else if source.canLoadMore {
                paginationTriggerView
            }
        }
    }
    
    private var paginationTriggerView: some View {
        Color.clear
            .frame(height: 10)
            .onAppear {
                source.loadMore()
            }
    }
    
    private var paginationLoadingView: some View {
        ProgressView()
            .padding()
            .frame(maxWidth: .infinity)
    }
}
