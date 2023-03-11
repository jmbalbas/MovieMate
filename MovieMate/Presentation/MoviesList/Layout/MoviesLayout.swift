//
//  MoviesLayout.swift
//  MovieMate
//
//  Created by Juan Santiago Martín Balbás on 11/3/23.
//

import UIKit

final class MoviesLayout: UICollectionViewCompositionalLayout {
    init() {
        super.init { _, _ in
            MoviesLayoutSection()
        }
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
