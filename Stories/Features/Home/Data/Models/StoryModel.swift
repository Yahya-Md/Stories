//
//  StoryModel.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

typealias StoriesModel = [StoryModel]

struct StoryModel: Decodable {
    let id: Int
    let user: UserModel
    var isSeen: Bool
    
}
