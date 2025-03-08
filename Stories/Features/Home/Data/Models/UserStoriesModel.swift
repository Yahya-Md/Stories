//
//  UserModel.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

struct UserStoriesModel: Decodable {
    let userId: String
    let username: String
    let profilePicture: String
    let stories: [StoryModel]
}
