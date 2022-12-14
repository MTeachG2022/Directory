//
//  UITableView+forceDequeueCell.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import UIKit

extension UITableView {
    func forceDequeueCell<T: UITableViewCell>(identifier: String) -> T {
        // swiftlint:disable:next force_cast
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
