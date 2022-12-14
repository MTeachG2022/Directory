//
//  MainTabBarVC.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import UIKit

class MainTabBarVC: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.isTranslucent = false
        tabBar.backgroundColor = .white
        tabBar.tintColor = .appMainColor
        // Add Shadow
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        tabBar.layer.shadowRadius = 5
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowOpacity = 0.3
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let viewConts = viewControllers else { return }
        for viewCont in viewConts {
            viewCont.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
            viewCont
                .tabBarItem
                .setTitleTextAttributes([NSAttributedString.Key.font: UIFont.poppine(.bold, size: 13)], for: .normal)
        }
    }
}
