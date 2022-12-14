//
//  BaseRouter.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import UIKit

class BaseRouter {
//    func startLoginScene() {
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0) {
//            guard let window = UIApplication.shared.windows.filter({$0.isKeyWindow}).first else {return}
//            window.rootViewController = LoginVCRouter.create().toNavigation()
//            UIView.transition(with: window,
//                              duration: 0.7,
//                              options: .transitionCrossDissolve,
//                              animations: nil, completion: nil)
//        }
//    }

    func restartLoginScene(url: URL? = nil) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0) {
            guard let window = UIApplication.shared.windows.filter({$0.isKeyWindow}).first else {return}
            window.rootViewController = HomeVCRouter.create().toNavigation()
            UIView.transition(with: window,
                              duration: 0.7,
                              options: .transitionCurlUp,
                              animations: nil, completion: nil)
        }
    }

//    class func navigateToNotification() {
//        topViewController()?.navigationController?
//            .pushViewController(NotificationsVCRouter.create(), animated: true)
//    }
//
//    class func navigateToSettings() {
//        topViewController()?.navigationController?
//            .pushViewController(SettingsVCRouter.create(), animated: true)
//    }

    class func topViewController(
        controller: UIViewController? = UIApplication.shared.windows.filter({$0.isKeyWindow}).first?.rootViewController
    ) -> UIViewController? {
        if let navigationController = controller as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topViewController(controller: selected)
            }
        }
        if let presented = controller?.presentedViewController {
            return topViewController(controller: presented)
        }
        return controller
    }
}

