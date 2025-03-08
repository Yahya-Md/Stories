//
//  PreviewsData.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//
class PreviewsData {
    private init() {}
    
    static func makeStory(picture: String = "https://i.pravatar.cc/300?u=1", isSeen: Bool = false) -> Story {
        let user = User(name: "", picture: picture)
        return Story(id: 0, user: user, isSeen: isSeen)
    }
}
