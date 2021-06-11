//
//  UIHelper.swift
//  GithubFollowers
//
//  Created by Ahmed Essmat on 20/05/2021.
//

import UIKit

enum UIHelper {
    
    static func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let width                   = view.bounds.width
        let padding:CGFloat         = 12
        let minimumSpacing: CGFloat = 10
        let availableWidth          = width - (padding * 2) - (minimumSpacing * 3)
        let itemWidth               = availableWidth / 3
        
        let flowLayout              = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
        
        return flowLayout
    }
    
}
