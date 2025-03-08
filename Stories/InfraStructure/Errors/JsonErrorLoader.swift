//
//  JsonErrorLoader.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//



enum JsonErrorLoader: Error {
    case invalidFile(String)
    case unableToDecode
}
