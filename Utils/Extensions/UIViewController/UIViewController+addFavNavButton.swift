//
//  UIViewController+addFavNavButton.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import UIKit

extension UIViewController {
    func addFavNavButton() -> UIButton {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "favourite"), for: .normal)
        let menuBarItem = UIBarButtonItem(customView: button)
        var topParent: UIViewController = self
        while topParent.parent != nil,
              String(describing: type(of: topParent.parent!.self))
                != String(describing: UINavigationController.self) {
            topParent = topParent.parent!
        }
        topParent.navigationItem.rightBarButtonItem = menuBarItem
        return button
    }
}
