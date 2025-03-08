//
//  SceneDelegate.swift
//  Stories
//
//  Created by Yahya on 8/3/2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var appCoordinator: Coordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        let navigationController = UINavigationController()
        let navigationRouter = NavigationRouter(navigationController: navigationController)
        let depencencyContainer = DependencyContainer()
        appCoordinator = HomeCoordinator(router: navigationRouter, dependencyContainer: depencencyContainer)
        appCoordinator?.start()
        window = UIWindow(windowScene: scene)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }

}

