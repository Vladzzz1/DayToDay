//
//  DateExtensions.swift
//  DayToDay
//
//  Created by Ацамаз Бицоев on 15.11.2020.
//

import Foundation

extension String {
    
    func toDate(format: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.date(from: self)
    }
}
