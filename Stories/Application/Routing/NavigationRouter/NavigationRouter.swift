//
//  NavigationRouter.swift
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
}

final class NavigationRouter {
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController = UINavigationController()) {
        self.navigationController = navigationController
        self.navigationController.isNavigationBarHidden = true
    }
}
