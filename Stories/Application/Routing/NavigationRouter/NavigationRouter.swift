//
//  NavigationRouter.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//
import UIKit
import SwiftUI

final class NavigationRouter {
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController = UINavigationController()) {
        self.navigationController = navigationController
        self.navigationController.isNavigationBarHidden = true
    }
}

extension NavigationRouter: Router {
    func redirect<T>(to view: T, animated: Bool) where T : View {
        let vc = view.viewController
        navigationController.pushViewController(vc, animated: animated)
    }
    
    func setRoot<T>(_ view: T, completion: (() -> ())?) where T : View {
        let vc = view.viewController
        setRoot(vc, completion: completion)
    }
}

// MARK: - Helpers
private extension NavigationRouter {
    func setRoot(_ viewController: UIViewController, completion: (() -> ())?) {
        if !navigationController.viewControllers.isEmpty {
            navigationController.pushViewController(viewController, animated: true)
        } else {
            navigationController.setViewControllers([viewController], animated: false)
        }
    }
}
