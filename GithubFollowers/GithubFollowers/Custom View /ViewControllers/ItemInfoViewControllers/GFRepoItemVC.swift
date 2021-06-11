//
//  GFRepoItemVC.swift
//  GithubFollowers
//
//  Created by Ahmed Essmat on 27/05/2021.
//

import UIKit

protocol RepoItemVCDelegate: AnyObject {
    func didUserTapGitHubProfile(for user: User)
}

class GFRepoItemVC: GFItemInfoVC {

    weak var delegate: RepoItemVCDelegate!
    
    init(user: User, delegate: RepoItemVCDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(background: .systemPurple, title: "Github Profile")
          
    }

    override func actionButtonTapped() {
        delegate.didUserTapGitHubProfile(for: user)
    }
}
