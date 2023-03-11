//
//  SceneDelegate.swift
//  MovieMate
//
//  Created by Juan Santiago Martín Balbás on 11/3/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let sceneWindow = scene as? UIWindowScene else { return }
        let navigationController = UINavigationController()
        setUpWindow(with: navigationController, inside: sceneWindow)
        let mainCoordinator = MainCoordinator(navigationController: navigationController)
        mainCoordinator.start()
    }

}

private extension SceneDelegate {
    func setUpWindow(with navigationController: UINavigationController, inside windowScene: UIWindowScene) {
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        self.window = window
    }
}
