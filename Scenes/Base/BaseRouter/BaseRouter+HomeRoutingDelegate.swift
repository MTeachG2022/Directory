//
//  BaseRouter+HomeRoutingDelegate.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import UIKit

protocol HomeRoutingDelegate: AnyObject {
    func startHome()
    func restartHome()
}

extension HomeRoutingDelegate where Self: BaseRouter {
    func startHome() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0) {
            guard let window = UIApplication.shared.windows.filter({$0.isKeyWindow}).first
            else { return }

            window.rootViewController = self.createtRootController()

            UIView.transition(with: window,
                              duration: 0.7,
                              options: .transitionCrossDissolve,
                              animations: nil, completion: nil)
        }
    }

    func restartHome() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0) {
            guard let window = UIApplication.shared.windows.filter({$0.isKeyWindow}).first
            else { return }

            //    window.rootViewController = HomeVCRouter.create()

            UIView.transition(with: window,
                              duration: 0.7,
                              options: .transitionFlipFromBottom,
                              animations: nil, completion: nil)
        }
    }

    private func createtRootController() -> UIViewController {
        let tabBarVc = MainTabBarVC()
        let homeVC = HomeVC()
//        let manazelVC = ManazelVCRouter.create()
//        let calculatorVC = CalculatorVCRouter.create()
//        let myGroup = MyGroupVCRouter.create()
        tabBarVc.setViewControllers([homeVC.toNavigation()],
                                    animated: false)
        return tabBarVc
    }
}

