//
//  AppDelegate+appearance.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import UIKit

extension AppDelegate {
    func setAppearance() {
        setNavigationAppearance()
        setImageViewAppearance()
    }
    func setNavigationAppearance() {
        let back = UIImage(named: "back")
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithOpaqueBackground()
        navBarAppearance.titleTextAttributes = [
            .foregroundColor: UIColor.appMainText,
            .font: UIFont.poppine(.medium, size: 21)
        ]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.appMainColor]
        navBarAppearance.setBackIndicatorImage(back, transitionMaskImage: back)
        navBarAppearance.shadowColor = .clear
        navBarAppearance.backgroundColor = UIColor.clear
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().tintColor = .appMainText
    }

    func setImageViewAppearance() {
        UIImageView.appearance().contentMode = .scaleAspectFill
        UIImageView.appearance().clipsToBounds = true
    }
}
