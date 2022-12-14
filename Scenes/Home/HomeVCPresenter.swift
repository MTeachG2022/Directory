//
//  HomeVCPresenter.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import Foundation

class HomeVCPresenter: BasePresenterProtocol {

    private weak var view: BaseViewProtocol?
    private let router: HomeVCRouter
    private let repository: HomeRepositoryDelegate

    init(view: BaseViewProtocol,
         router: HomeVCRouter,
         repository: HomeRepositoryDelegate) {
        self.view = view
        self.router = router
        self.repository = repository
    }

    func viewDidLoad() {
        print("qqq")
    }

    func didTapNotification() {
        print("qqq")
    }

    func didTapSettings() {
        print("qqq")
    }
}
