//
//  Router.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//
import SwiftUI

protocol Router {
    func redirect<T: View>(
        to view: T,
        animated: Bool
    )
    
    func setRoot<T: View>(
        _ view: T,
        completion: (() -> ())?
    )
}

extension Router {
    func setRoot<T: View>(_ view: T) {
        setRoot(view, completion: nil)
    }
}
