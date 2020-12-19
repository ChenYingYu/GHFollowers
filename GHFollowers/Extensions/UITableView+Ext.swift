//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by ChenAlan on 2020/12/19.
//

import UIKit

extension UITableView {

    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }

    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
