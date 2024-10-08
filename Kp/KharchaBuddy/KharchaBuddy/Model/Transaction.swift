//
//  Transaction.swift
//  KharchaBuddy
//
//  Created by Arif Alam on 24/05/24.
//

import SwiftUI

struct Transaction: Identifiable {
    let id: UUID = .init()
    /// Properties
    var title: String
    var remarks: String
    var amount: Double
    var dateAdded: Date
    var category: String
    var tintColor: String
    
    init(title: String, remarks: String, amount: Double, dateAdded: Date, category: Category, tintColor: String){
        self.title = title
        self.remarks = remarks
        self.amount = amount
        self.dateAdded = dateAdded
        self.category = category.rawValue
        self.tintColor = tintColor
        
        
    }
}
