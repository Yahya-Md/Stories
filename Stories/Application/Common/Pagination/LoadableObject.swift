//
//  LoadableObject.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//


import Foundation

protocol LoadableObject: ObservableObject {
    associatedtype Output
    var state: LoadingState<Output> { get }
    var canLoadMore: Bool { get }
    var isLoadingMore: Bool { get }
    func load()
    func loadMore()
}
