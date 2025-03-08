//
//  GetStoriesUseCase.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//
import Combine

protocol GetStoriesUseCase {
    func execute(currentPage: Int) -> AnyPublisher<[Story], Never>
}

class GetStoriesUseCaseImpl: GetStoriesUseCase {
    func execute(currentPage: Int) -> AnyPublisher<[Story], Never> {
        return Just([Story]())
            .eraseToAnyPublisher()
    }
}
