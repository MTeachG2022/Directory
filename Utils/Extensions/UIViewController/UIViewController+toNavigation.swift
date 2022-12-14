//
//  UIViewController+toNavigation.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import UIKit

extension UIViewController {
    func toNavigation() -> UINavigationController {
        let nav =  UINavigationController(rootViewController: self)
        return nav
    }
}
