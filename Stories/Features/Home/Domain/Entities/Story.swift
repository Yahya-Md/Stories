//
//  Story.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

class Story: Identifiable {
    let id: Int
    let user: User
    var isSeen: Bool
    
    init(id: Int, user: User, isSeen: Bool) {
        self.id = id
        self.user = user
        self.isSeen = isSeen
    }
    
    func toggleIsSeen() {
        isSeen = true
    }
}
