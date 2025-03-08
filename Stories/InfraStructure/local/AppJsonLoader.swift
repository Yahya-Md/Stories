//
//  AppJsonLoader.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

import Foundation
import Combine

class AppJsonLoader: JsonLoader {
    func load<T>(with filename: String) -> AnyPublisher<T, any Error> where T : Decodable {
        guard let url = Bundle.main.url(forResource: filename, withExtension: "json") else {
            return Fail(error: JsonErrorLoader.invalidFile(filename))
                .eraseToAnyPublisher()
        }
        return Just(url)
            .tryMap { try Data(contentsOf: $0) }
            .decode(type: T.self, decoder: JSONDecoder())
            .mapError { error in
                debugPrint(error.localizedDescription)
                return JsonErrorLoader.unableToDecode
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
