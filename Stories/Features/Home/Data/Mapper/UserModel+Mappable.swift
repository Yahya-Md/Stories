//
//  UserModel+Mappable.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

extension UserModel {
    func toDomain() -> User {
        User(name: name, picture: picture)
    }
}
