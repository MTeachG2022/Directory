//
//  L012Localizer.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import UIKit

class L012Localizer: NSObject {
    class func doTheSwizzling() {
        methodSwizzleGivenClassName(cls: Bundle.self,
                                    originalSelector: #selector(Bundle.localizedString(forKey:value:table:)),
                                    overrideSelector: #selector(Bundle.specialLocalizedStringForKey(_:value:table:)))
        methodSwizzleGivenClassName(cls: UIApplication.self,
                                    originalSelector: #selector(getter: UIApplication.userInterfaceLayoutDirection),
                                    overrideSelector: #selector(getter: UIApplication.cstmUserInterfaceLayoutDirection))
        methodSwizzleGivenClassName(cls: UILabel.self,
                                    originalSelector: #selector(UILabel.layoutSubviews),
                                    overrideSelector: #selector(UILabel.cstmlayoutSubviews))
    }
}

fileprivate extension Bundle {
    @objc func specialLocalizedStringForKey(_ key: String, value: String?, table tableName: String?) -> String {
        if self == Bundle.main {
            let currentLanguage = L102Language.currentAppleLanguage()
            var bundle: Bundle!
            if let path = Bundle.main.path(forResource: L102Language.currentAppleLanguageFull(), ofType: "lproj") {
                bundle = Bundle(path: path)!
            } else if let path = Bundle.main.path(forResource: currentLanguage, ofType: "lproj") {
                bundle = Bundle(path: path)!
            } else {
                let path = Bundle.main.path(forResource: "Base", ofType: "lproj")!
                bundle = Bundle(path: path)!
            }
            return (bundle.specialLocalizedStringForKey(key, value: value, table: tableName))
        } else {
            return (self.specialLocalizedStringForKey(key, value: value, table: tableName))
        }
    }
}

 extension UILabel {
    @objc public func cstmlayoutSubviews() {
        self.cstmlayoutSubviews()
        if self.isKind(of: NSClassFromString("UITextFieldLabel")!) {
            return // handle special case with uitextfields
        }
        guard self.textAlignment != .center else {return}
        if self.tag <= 0 {
            if L102Language.isRTL {
                if self.textAlignment == .right {
                    return
                }
            } else {
                if self.textAlignment == .left {
                    return
                }
            }
        }
        if self.tag <= 0 {
            if L102Language.isRTL {
                self.textAlignment = .right
            } else {
                self.textAlignment = .left
            }
        }
    }
 }

/// Exchange the implementation of two methods for the same Class
private func methodSwizzleGivenClassName(cls: AnyClass, originalSelector: Selector, overrideSelector: Selector) {
    guard let origMethod: Method = class_getInstanceMethod(cls, originalSelector),
          let overrideMethod: Method = class_getInstanceMethod(cls, overrideSelector)
    else { return }
    if class_addMethod(cls,
                       originalSelector,
                       method_getImplementation(overrideMethod),
                       method_getTypeEncoding(overrideMethod)) {
        class_replaceMethod(cls,
                            overrideSelector,
                            method_getImplementation(origMethod),
                            method_getTypeEncoding(origMethod))
    } else {
        method_exchangeImplementations(origMethod, overrideMethod)
    }
}

fileprivate extension UIApplication {
    @objc var cstmUserInterfaceLayoutDirection: UIUserInterfaceLayoutDirection {
        var direction = UIUserInterfaceLayoutDirection.leftToRight
        if L102Language.currentAppleLanguage() == "ar" {
            direction = .rightToLeft
        }
        return direction
    }
}

