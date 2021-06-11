//
//  GFButton.swift
//  GithubFollowers
//
//  Created by Ahmed Essmat on 09/05/2021.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
   convenience init(background: UIColor, title: String) {
        self.init(frame: .zero)
        self.backgroundColor = background
        self.setTitle(title, for: .normal)
    }
    
   private func configure() {
        layer.cornerRadius = 10
        titleLabel?.textColor = .white
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false  
    }
    
    func set(background: UIColor, title: String) {
        self.backgroundColor = background
        self.setTitle(title, for: .normal)
    }
    
    
}
