//
//  Coordinator.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

protocol Coordinator: AnyObject {
    var router: any Router { get set }
    func start()
}
