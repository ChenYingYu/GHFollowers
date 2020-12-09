//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by ChenAlan on 2020/12/8.
//

import UIKit

class FollowerListVC: UIViewController {

    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
