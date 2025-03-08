//
//  HomeFlowDependencyProvider.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

protocol HomeFlowDependencyProvider: AnyObject {
    func makeCategoriesViewModel()
}

extension DependencyContainer: HomeFlowDependencyProvider {
    func makeCategoriesViewModel() {
        
    }
}
