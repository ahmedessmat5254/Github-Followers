//
//  UITableView+Ext.swift
//  GithubFollowers
//
//  Created by Ahmed Essmat on 11/06/2021.
//

import UIKit

extension UITableView {
    
    func updateDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
