//
//  Data+Ext.swift
//  GithubFollowers
//
//  Created by Ahmed Essmat on 27/05/2021.
//

import UIKit

extension Date {
    
    func convertToMonthYearFormat() -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(for: self)
    }
}
