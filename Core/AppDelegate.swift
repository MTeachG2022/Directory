//
//  AppDelegate.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import UIKit
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        IQKeyboardManager.shared.enable = true
        setAppearance()
        L102Language.switchLanguage()
        L012Localizer.doTheSwizzling()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = HomeVCRouter.create()
        window?.makeKeyAndVisible()

        return true
    }
}
