//
//  StoryModel.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

struct StoryModel: Decodable {
    let storyId: String
    let type: String
    let url: String
    let duration: Int
    let timestamp: String
}
