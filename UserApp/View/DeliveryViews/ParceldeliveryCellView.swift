//
//  ServiceCellUI.swift
//  UserApp
//
//  Created by jizan k on 18/06/24.
//

import SwiftUI

struct ParceldeliveryCellView: View {
    var paeceldata: ParcelDeliveryModel
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack{
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .shadow(radius: 3)
                    .frame(width: 168,height: 200)
                    .overlay(
                        VStack{
                            Spacer().frame(height: 20)
                            Image(paeceldata.image)
                                .resizable()
                                .frame(width: 60,height: 60)
                            Spacer()
                                .frame(height: 7)
                            Text(paeceldata.name)
                                .font(.custom("Poppins-Semibold", size: 16))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding([.leading,.trailing],10)
                            Spacer()
                                .frame(height: 10)
                            Text(paeceldata.bio)
                                .font(.custom("Poppins-Regular", size: 14))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding([.leading,.trailing],10)
                                .frame(height: 65)
                            Spacer()
                        }
                    )
            }
        }
        .frame(height: 220)
    }
}

#Preview {
    ParceldeliveryCellView(paeceldata: ParcelDeliveryModel(image: "ic_largepackage", name: "Large Package", bio: "Have a big parcel to send? Click here"))
}
