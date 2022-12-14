//
//  UIView+SetShadow.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import UIKit

extension UIView {
    func setShadow() {
        self.layer.masksToBounds = false
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.1
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.appMainText.cgColor
    }
}
