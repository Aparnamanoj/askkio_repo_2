//
//  WalletHomeViewModel.swift
//  UserApp
//
//  Created by jizan k on 27/06/24.
//

import Foundation
class WalletHomeViewModel: ObservableObject{
    @Published var addMoneySheet = false
    @Published var transferMOneySheet = false
    @Published var transactionSheet = false
    @Published var contactusSheet = false
    @Published var selectedButton: String? = "All"
    @Published var balance: Double = 0.00
}
