//
//  GFFollowerItemVC.swift
//  GithubFollowers
//
//  Created by Ahmed Essmat on 27/05/2021.
//

import UIKit

protocol FollowerItemVCDelegate: AnyObject {
    func didUserTapGetFollower(for user: User)
    
}

class GFFollowerItemVC: GFItemInfoVC {
    
    weak var delegate: FollowerItemVCDelegate!

    init(user: User, delegate: FollowerItemVCDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItem()
    }
    
    private func configureItem(){
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(background: .systemGreen, title: "Get Follower")
    }
    
    override func actionButtonTapped() {
        delegate.didUserTapGetFollower(for: user)
        
        
    }


}
