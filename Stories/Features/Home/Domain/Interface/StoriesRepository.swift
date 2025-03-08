//
//  StoriesRepository.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

import Combine

protocol GetStoriesRepository {
    func getStoriesRepository(currentPage: Int) -> AnyPublisher<Stories, Error>
}
