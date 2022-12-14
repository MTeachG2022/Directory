//
//  HomeVCRouter.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import UIKit

class HomeVCRouter: BaseRouter, HomeRoutingDelegate {

    class func create() -> UIViewController {
        let viewCont = HomeVC()
        let router = HomeVCRouter()
        let repository = HomeRepository(network: Network())
        let presenter = HomeVCPresenter(view: viewCont, router: router, repository: repository)
        viewCont.presenter = presenter
        return viewCont
    }

//    func startRegister() {
//        guard let window = UIApplication.shared.windows.filter({$0.isKeyWindow}).first else { return  }
//        window.rootViewController = RegisterVCRouter.create().toNavigation()
//        UIView.transition(with: window,
//                          duration: 0.7,
//                          options: .transitionCrossDissolve,
//                          animations: nil, completion: nil)
//    }

}
