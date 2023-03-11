//
//  MainCoordinator.swift
//  MovieMate
//
//  Created by Juan Santiago Martín Balbás on 11/3/23.
//

import UIKit

final class MainCoordinator: Coordinator {
    var children: [Coordinator] = []
    let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let viewController = MoviesSearchViewController()
        navigationController.pushViewController(viewController, animated: false)
    }
}
