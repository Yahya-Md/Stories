//
//  User.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

import Foundation

struct UserStory: Identifiable {
    var id = UUID()
    
    let userId: String
    let username: String
    let profilePicture: String
    let stories: [Story]
}
