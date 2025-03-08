//
//  HomeFlowDependencyProvider.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

protocol HomeFlowDependencyProvider: AnyObject {
    func makeStoriesViewModel() -> GetStoriesUseCase
}

extension DependencyContainer: HomeFlowDependencyProvider {
    func makeStoriesViewModel() -> GetStoriesUseCase {
        let repository = StoriesRepositoryImpl(loader: appLoader)
        return GetStoriesUseCaseImpl(repository: repository)
    }
}
