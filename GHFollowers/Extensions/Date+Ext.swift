//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by ChenAlan on 2020/12/16.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
