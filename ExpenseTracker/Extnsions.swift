//
//  Extnsions.swift
//  ExpenseTracker
//
//  Created by haoshuai on 2022/7/22.
//

import Foundation
import SwiftUI

extension Color {
    static let background = Color("Background")
    static let icon = Color("Icon")
    static let text = Color("Text")
    static let systemBackground = Color(uiColor: .systemBackground)
}

extension DateFormatter {
    static let allNumericUSA: DateFormatter = {
        print("Initallizing DataFormatter")
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
       
        return formatter
    }()
}

extension String {
    func dateParsed() -> Date {
        guard let parsedDate = DateFormatter.allNumericUSA.date(from: self) else {
            return Date()
        }
        return parsedDate
    }
}

extension Date: Strideable {
    func formatted() -> String {
        return self.formatted(.dateTime.year().month().day())
    }
}


extension Double {
    func roundedToDegits() -> Double {
        return (self * 10).rounded() / 100
    }
}
