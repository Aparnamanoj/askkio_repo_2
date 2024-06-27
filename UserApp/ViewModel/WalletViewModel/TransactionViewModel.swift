//
//  TransactionViewModel.swift
//  UserApp
//
//  Created by jizan k on 27/06/24.
//

import Foundation
import SwiftUI

class TransactionViewModel: ObservableObject {
    @Published var selectedTabs: TransactionType = .all
    @Published var showSheet: Bool = false
    @Published var isPresenting: Bool = false
    @Published var isShowpoup: Bool = false
    
    var transactions: [Transaction] = [] // Sample data
    
    var filteredTransactions: [Transaction] {
        switch selectedTabs {
        case .all:
            return transactions
        case .credit:
            return transactions.filter { $0.type == .credit }
        case .debit:
            return transactions.filter { $0.type == .debit }
        }
    }
}
