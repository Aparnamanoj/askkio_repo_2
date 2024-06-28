//
//  ReferralCodeViewModel.swift
//  UserApp
//
//  Created by jizan k on 21/06/24.
//

import Foundation
import SwiftUI
import Combine

class ReferralCodeViewModel: ObservableObject {
    @Published var referralText: String = ""
    @Published var referralSheet = false
    @Published var isShowpoup: Bool = false
    
    func submitReferralCode() {
       
        print("Referral Code submitted: \(referralText)")
    }
}
