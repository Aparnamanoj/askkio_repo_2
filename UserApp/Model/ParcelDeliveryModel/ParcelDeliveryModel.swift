//
//  ParcelDeliveryModel.swift
//  UserApp
//
//  Created by jizan k on 27/06/24.
//

import Foundation
import Foundation

struct ParcelDeliveryModel: Identifiable {
    let id = UUID()
    let image: String
    let name: String
    let bio: String
}

enum parceldatas: String {
    case single_delivery = "Single Delivery"
    case multi_delivery = "Multi Delivery"
    
}
