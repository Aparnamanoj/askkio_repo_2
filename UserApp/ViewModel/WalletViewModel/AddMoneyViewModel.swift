//
//  AddMoneyViewModel.swift
//  UserApp
//
//  Created by jizan k on 27/06/24.
//

import Foundation
import SwiftUI
import Combine

class AddMoneyViewModel: ObservableObject {
    @Published var price: Double = 0.00

    func incrementPrice(by amount: Double) {
        price += amount
    }

    func decrementPrice(by amount: Double) {
        if price > 0 {
            price -= amount
        }
    }

    func resetPrice() {
        price = 0.00
    }
}
