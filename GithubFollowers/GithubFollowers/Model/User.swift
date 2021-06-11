//
//  User.swift
//  GithubFollowers
//
//  Created by Ahmed Essmat on 16/05/2021.
//

import UIKit 
   
struct User: Codable {
    let login: String
    let avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let htmlUrl: String
    let following: Int
    let followers: Int
    let createdAt: Date
}
