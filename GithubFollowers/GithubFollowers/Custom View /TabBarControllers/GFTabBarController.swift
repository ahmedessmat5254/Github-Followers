//
//  GFTabBarController.swift
//  GithubFollowers
//
//  Created by Ahmed Essmat on 10/06/2021.
//

import UIKit

class GFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .systemGreen
        viewControllers = [createSearchNavigationController(), createFavoriteListNavigationController()]

    }
    
    func createSearchNavigationController() -> UINavigationController {
        let search = SearchVC()
        search.title = "Search"
        search.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        return UINavigationController(rootViewController: search)
    }
    
    func createFavoriteListNavigationController() -> UINavigationController {
        let favorite = FavoriteListVC()
        favorite.title = "Favorite"
        favorite.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        return UINavigationController(rootViewController: favorite)
    }
    


}
