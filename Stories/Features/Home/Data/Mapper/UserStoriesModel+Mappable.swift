//
//  UserModel+Mappable.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

extension UserStoriesModel {
    func toDomain() -> UserStory {
        UserStory(userId: userId, username: username, profilePicture: profilePicture, stories: stories.map { $0.toDomain() })
    }
}
