//
//  ContactUsViewModel.swift
//  UserApp
//
//  Created by jizan k on 27/06/24.
//

import Foundation
import SwiftUI
import Combine

class ContactUsViewModel: ObservableObject {
    @Published var feedback: String = ""
    @Published var details: String = ""
    
    var cancellables = Set<AnyCancellable>()
    
    init() {
        // Add any additional setup or bindings if necessary
    }
    
    func submitFeedback() {
        // Handle the submission logic here
        print("Feedback: \(feedback), Details: \(details)")
    }
}
