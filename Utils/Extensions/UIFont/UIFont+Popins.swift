//
//  UIFont+Popins.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import UIKit

extension UIFont {

    public enum PoppineType: String {
        case bold = "-Bold"
        case regular = "-Regular"
        case medium = "-Medium"
    }

    static func poppine(_ type: PoppineType = .regular, size: CGFloat = UIFont.systemFontSize) -> UIFont {
        return UIFont(name: "Poppins\(type.rawValue)", size: size)!
    }

}
