//
//  UIViewController+loading.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import NVActivityIndicatorView

extension UIViewController: NVActivityIndicatorViewable {

    func startLoading(message: String? = nil) {
        NVActivityIndicatorView.DEFAULT_COLOR = .appMainColor
        NVActivityIndicatorView.DEFAULT_BLOCKER_BACKGROUND_COLOR = .black.withAlphaComponent(0.2)
        NVActivityIndicatorView.DEFAULT_TEXT_COLOR = .appMainColor
        NVActivityIndicatorView.DEFAULT_BLOCKER_MESSAGE_FONT = .poppine()
        startAnimating(message: message, type: NVActivityIndicatorType.ballScaleMultiple)
    }

    func setLoadingMessage(message: String) {
        NVActivityIndicatorPresenter.sharedInstance.setMessage(message)
    }

    func stopLoading() {
        stopAnimating()
    }
}
