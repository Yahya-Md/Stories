//
//  Untitled.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

import Combine
import Foundation

class StoriesRepositoryImpl: GetStoriesRepository {
    let loader: JsonLoader
    
    init(loader: JsonLoader) {
        self.loader = loader
    }
    
    func getStoriesRepository(currentPage: Int) -> AnyPublisher<Stories, any Error> {
        let fileName: String = ""
        return loader.load(with: fileName)
            .map{ (result: StoriesModel) in
                result.map { $0.toDomain() }
            }
            .eraseToAnyPublisher()
    }
}
