//
//  StoriesModel.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

struct StoriesModel: Decodable {
    let currentPage: Int
    let totalPages: Int
    let stories: [UserStoriesModel]
}
