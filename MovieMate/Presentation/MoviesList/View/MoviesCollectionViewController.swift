//
//  MoviesCollectionViewController.swift
//  MovieMate
//
//  Created by Juan Santiago Martín Balbás on 11/3/23.
//

import UIKit

final class MoviesCollectionViewController: UICollectionViewController {

    private lazy var dataSource = MoviesCollectionViewDataSource(collectionView: collectionView)

    init() {
        super.init(collectionViewLayout: MoviesLayout())
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpDataSource()
        applySnapshot()
    }

    private func setUpDataSource() {
        dataSource.setDataSource(of: collectionView)
    }

    private func applySnapshot() {
        var snapshot = MoviesDataSourceSnapShot()
        snapshot.appendSections([.main])
        snapshot.appendItems([.green, .blue, .red, .cyan, .yellow])
        dataSource.apply(snapshot)
    }
}
