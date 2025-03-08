//
//  Story.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

class Story: Identifiable {
    let storyId: String
    let type: String
    let url: String
    let duration: Int
    let timestamp: String
    var isSeen: Bool
    
    init(storyId: String, type: String, url: String, duration: Int, timestamp: String, isSeen: Bool) {
        self.storyId = storyId
        self.type = type
        self.url = url
        self.duration = duration
        self.timestamp = timestamp
        self.isSeen = isSeen
    }
    
    func toggleIsSeen() {
        isSeen = true
    }
}
