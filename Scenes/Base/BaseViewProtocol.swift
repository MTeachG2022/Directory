//
//  BaseViewProtocol.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import UIKit

protocol BaseViewProtocol: AnyObject {
    func startLoading(message: String?)
    func setLoadingMessage(message: String)
    func stopLoading()
    func showSelfDismissingAlert(_ message: String)
    func showSelfDismissingAlert(_ message: String, after time: TimeInterval)
    func setLeftNavTitle(_ title: String)
    func pop()
    func pop(after: Double)
    func showConfirmationAlert(message: String, okActionHandler: @escaping ((UIAlertAction) -> Void))
    func setCenterNavTitle(_ title: String)
}

extension BaseViewProtocol where Self: UIViewController {

    func startLoading(message: String? = nil) {
        startLoading(message: message)
    }

    func setLoadingMessage(message: String) {
        setLoadingMessage(message: message)
    }

    func stopLoading() {
        stopLoading()
    }

    func showSelfDismissingAlert(_ message: String) {
        showAlert(message: message)
    }

    func showConfirmationAlert(message: String, okActionHandler: @escaping ((UIAlertAction) -> Void)) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok".localize, style: .default, handler: okActionHandler)
        let cancelAction = UIAlertAction(title: "cancel".localize, style: .cancel, handler: nil)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }

    func showSelfDismissingAlert(_ message: String, after time: TimeInterval) {
        showAlert(message: message, time: time)
    }

    func setLeftNavTitle(_ title: String) {
        let label = UILabel()
        label.text = title
        label.textColor = .appMainText
        label.font = .poppine(.bold, size: 22)
        var topParent: UIViewController = self
        while topParent.parent != nil,
              String(describing: type(of: topParent.parent!.self))
                != String(describing: UINavigationController.self) {
            topParent = topParent.parent!
        }
        topParent.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: label)
    }

    func setCenterNavTitle(_ title: String) {
        var topParent: UIViewController = self
        while topParent.parent != nil,
              String(describing: type(of: topParent.parent!.self))
                != String(describing: UINavigationController.self) {
            topParent = topParent.parent!
        }
        topParent.title = title
    }

    func pop() {
        if let navigationController = navigationController {
            navigationController.popViewController(animated: true)
        }
        dismiss(animated: true, completion: nil)
    }

    func pop(after: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + after) {
            self.navigationController?.popViewController(animated: true)
        }
    }
}

