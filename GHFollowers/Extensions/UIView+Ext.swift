//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by ChenAlan on 2020/12/19.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view)}
    }
}
