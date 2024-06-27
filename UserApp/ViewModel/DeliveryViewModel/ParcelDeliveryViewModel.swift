//
//  ParcelDeliveryViewModel.swift
//  UserApp
//
//  Created by jizan k on 27/06/24.
//

import Foundation
class ParcelDeliveryViewModel: ObservableObject {
    
   let single_delivery = [
        ParcelDeliveryModel(image: "ic_largepackage", name: "Large Package", bio: "Have a big parcel to send? Click here"),
        ParcelDeliveryModel(image: "ic_smallpackage", name: "Small Package", bio: "Need to send small items by car or moped?")
    ]
    
   let multi_delivery = [
        ParcelDeliveryModel(image: "ic_multi_large", name: "Large Package", bio: "Have a big parcel to send? Click here"),
        ParcelDeliveryModel(image: "ic_multi_small", name: "Small Package", bio: "Need to send small items by car or moped?")
    ]
}
