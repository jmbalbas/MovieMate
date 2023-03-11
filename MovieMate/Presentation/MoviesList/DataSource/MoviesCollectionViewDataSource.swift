//
//  MoviesCollectionViewDataSource.swift
//  MovieMate
//
//  Created by Juan Santiago Martín Balbás on 11/3/23.
//

import UIKit

typealias MoviesDataSource = UICollectionViewDiffableDataSource<MoviesCollectionViewDataSource.Section, UIColor>
typealias MoviesDataSourceSnapShot = NSDiffableDataSourceSnapshot<MoviesCollectionViewDataSource.Section, UIColor>

final class MoviesCollectionViewDataSource {

    enum Section: Hashable {
        case main
    }

    private let collectionView: UICollectionView
    private lazy var dataSource = MoviesDataSource(collectionView: collectionView, cellProvider: cellProvider)

    private let cellRegistration = UICollectionView.CellRegistration<MovieCollectionViewCell, UIColor> { cell, indexPath, model in
        cell.setup(color: model)
    }

    init(collectionView: UICollectionView) {
        self.collectionView = collectionView
    }

    func setDataSource(of collectionView: UICollectionView) {
        collectionView.dataSource = dataSource
    }

    func apply(_ snapshot: MoviesDataSourceSnapShot) {
        dataSource.apply(snapshot)
    }

    private func cellProvider(
        in collectionView: UICollectionView,
        forRowAt indexPath: IndexPath,
        with model: UIColor
    ) -> UICollectionViewCell? {
        collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: model)
    }
}
