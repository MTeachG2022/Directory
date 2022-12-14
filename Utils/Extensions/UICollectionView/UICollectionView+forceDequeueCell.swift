//
//  UICollectionView+forceDequeueCell.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import UIKit

extension UICollectionView {
    func forceDequeueCell<T: UICollectionViewCell>(identifier: String, for indexPath: IndexPath) -> T {
        // swiftlint:disable:next force_cast
        return dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! T
    }
}
