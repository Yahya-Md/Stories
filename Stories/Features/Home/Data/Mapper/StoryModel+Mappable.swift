//
//  StoryModel+Mappable.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

import Foundation

extension StoryModel {
    func toDomain() -> Story {
        Story(storyId: storyId, type: type, url: url, duration: duration, timestamp: timestamp, isSeen: false)
    }
}
