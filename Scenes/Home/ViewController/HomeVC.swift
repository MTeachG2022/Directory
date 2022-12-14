//
//  HomeVC.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import UIKit

class HomeVC: BaseVC<HomeView>, BaseViewProtocol {

    var presenter: BasePresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
}
