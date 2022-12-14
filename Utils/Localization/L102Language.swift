//
//  L102Language.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import UIKit

let APPLE_LANGUAGE_KEY = "AppleLanguages" // swiftlint:disable:this identifier_name
class L102Language: NSObject {

    class var isRTL: Bool {
        return L102Language.currentAppleLanguage() == "ar"
    }

    class func currentAppleLanguage() -> String {
        let userdef = UserDefaults.standard
        var currentWithoutLocale = "Base"
        if let langArray = userdef.object(forKey: APPLE_LANGUAGE_KEY) as? [String] {
            if var current = langArray.first {
                if let range = current.range(of: "-") {
                    current = String(current[..<range.lowerBound])
                }
                currentWithoutLocale = current
            }
        }
        return currentWithoutLocale
    }

    class func currentAppleLanguageFull() -> String {
        let userdef = UserDefaults.standard
        let langArray = userdef.object(forKey: APPLE_LANGUAGE_KEY) as! NSArray // swiftlint:disable:this force_cast
        let current = langArray.firstObject as! String // swiftlint:disable:this force_cast
        return current
    }

    class func switchLanguage() {
     //   if L102Language.currentAppleLanguage() == "en" {
            L102Language.setAppleLAnguageTo(lang: "ar")
            UIView.appearance().semanticContentAttribute = .forceRightToLeft
     //   }
//        else {
//            L102Language.setAppleLAnguageTo(lang: "en")
//            UIView.appearance().semanticContentAttribute = .forceLeftToRight
//        }
    }

    private class func setAppleLAnguageTo(lang: String) {
        let userdef = UserDefaults.standard
        userdef.set([lang], forKey: "AppleLanguages")
        userdef.synchronize()
    }

}

