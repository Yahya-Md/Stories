//
//  StoriesModel+Mappable.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

extension StoriesModel {
    func toDomain() -> Stories {
        let stories = stories.map{ $0.toDomain() }
        return Stories(currentPage: currentPage, totalPages: totalPages, stories: stories)
    }
}
