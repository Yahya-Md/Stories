//
//  JsonLoader.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//
import Combine

protocol JsonLoader {
    func load<T: Decodable>(with filename: String) -> AnyPublisher<T, Error>
}
