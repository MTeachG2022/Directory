//
//  IntrinsicTableView.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import UIKit

class IntrinsicTableView: UITableView {
  override var contentSize: CGSize {
    didSet {
      self.invalidateIntrinsicContentSize()
    }
  }
  override var intrinsicContentSize: CGSize {
    self.layoutIfNeeded()
    return CGSize(width: UIView.noIntrinsicMetric, height: contentSize.height)
  }
}
