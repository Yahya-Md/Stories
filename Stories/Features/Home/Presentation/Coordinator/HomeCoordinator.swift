//
//  HomeCoordinator.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

import Foundation
final class HomeCoordinator: Coordinator {
    let dependencyContainer: any HomeFlowDependencyProvider
    var router: any Router
    
    init(router: any Router, dependencyContainer: DependencyContainer) {
        self.router = router
        self.dependencyContainer = dependencyContainer
    }
    
    func start() {
        let viewModel = makeStoriesViewModel()
        let view = HomeView(viewModel: viewModel)
        router.setRoot(view)
    }
}

private extension HomeCoordinator {
    func makeStoriesViewModel() -> StoriesViewModel {
        StoriesViewModel(useCase: dependencyContainer.makeStoriesViewModel())
    }
}
