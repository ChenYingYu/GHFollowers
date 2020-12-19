//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by ChenAlan on 2020/12/15.
//

import Foundation

protocol GFRepoItemVCDelegate: class {
    func didTapGitHubProfile(of user: User)
}

class GFRepoItemVC: GFItemInfoVC {

    weak var delegate: GFRepoItemVCDelegate?


    init(user: User, delegate: GFRepoItemVCDelegate) {
        self.delegate = delegate
        super.init(user: user)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }

    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "Github Profile")
    }

    override func actionButtonTapped() {
        delegate?.didTapGitHubProfile(of: user)
    }
}
