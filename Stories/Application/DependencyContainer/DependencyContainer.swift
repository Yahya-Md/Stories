//
//  DependencyContainer.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//
final class DependencyContainer {
    var appLoader: JsonLoader {
        return AppJsonLoader()
    }
}
