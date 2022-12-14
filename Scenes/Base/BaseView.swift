//
//  BaseView.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import UIKit

class BaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupAppearance()
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }

    func setupAppearance() {
        backgroundColor = .white
    }

    func setupView() {}
}
