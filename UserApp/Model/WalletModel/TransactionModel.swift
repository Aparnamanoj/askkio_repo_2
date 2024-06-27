//
//  TransactionModel.swift
//  UserApp
//
//  Created by jizan k on 27/06/24.
//

import Foundation
struct Transaction {
    let id: UUID
    let type: TransactionType
    let amount: Double
    let date: Date
}

enum TransactionType {
    case all, credit, debit
}
