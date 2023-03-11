//
//  MoviesLayoutSection.swift
//  MovieMate
//
//  Created by Juan Santiago Martín Balbás on 11/3/23.
//

import UIKit

final class MoviesLayoutSection: NSCollectionLayoutSection {
    private enum Constants {
        static let spacing: CGFloat = 16
        static let itemHeight: CGFloat = 300
    }

    convenience init() {
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .absolute(Constants.itemHeight)
        )
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(
            top: Constants.spacing,
            leading: Constants.spacing,
            bottom: Constants.spacing,
            trailing: Constants.spacing
        )
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .absolute(Constants.itemHeight)
        )
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        self.init(group: group)
    }
}
