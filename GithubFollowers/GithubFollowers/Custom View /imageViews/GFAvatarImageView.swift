//
//  GFAvatarImageView.swift
//  GithubFollowers
//
//  Created by Ahmed Essmat on 18/05/2021.
//

import UIKit

class GFAvatarImageView: UIImageView {
    let cache           = NetworkManager.shared.cache
    let placeholder     = Images.placeholder
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        layer.cornerRadius   = 10
        clipsToBounds        = true
        image                = placeholder
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
   
}
