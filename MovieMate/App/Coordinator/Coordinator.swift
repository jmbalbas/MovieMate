//
//  Coordinator.swift
//  MovieMate
//
//  Created by Juan Santiago Martín Balbás on 11/3/23.
//

import UIKit

@MainActor
protocol Coordinator: AnyObject {
    var children: [Coordinator] { get }
    var navigationController: UINavigationController { get }

    func start()
}
