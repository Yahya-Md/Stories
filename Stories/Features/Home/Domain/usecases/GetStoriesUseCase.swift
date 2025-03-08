//
//  GetStoriesUseCase.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//
import Combine

protocol GetStoriesUseCase {
    func execute(currentPage: Int) -> AnyPublisher<[Story], Error>
}

class GetStoriesUseCaseImpl: GetStoriesUseCase {
    
    private let repository: GetStoriesRepository
    
    init(repository: GetStoriesRepository) {
        self.repository = repository
    }
    
    func execute(currentPage: Int) -> AnyPublisher<[Story], Error> {
        return repository.getStoriesRepository(currentPage: currentPage).eraseToAnyPublisher()
    }
}
