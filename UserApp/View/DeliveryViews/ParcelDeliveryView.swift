//
//  ParcelDeliveryView.swift
//  UserApp
//
//  Created by jizan k on 27/06/24.
//

import SwiftUI

struct ParcelDeliveryView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .fill(Color(hex: "#00AAD6"))
                .overlay(
                    ZStack {
                        HStack {
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Image("ic_nav_bar_back")
                                    .resizable()
                                    .renderingMode(.template)
                                    .foregroundColor(.white)
                                    .frame(width: 28, height: 30)
                                    .padding(.top, 56)
                                    .padding(.leading, 31)
                            })
                            Spacer()
                        }
                        Text("Parcel Delivery")
                            .font(.custom("Roboto-Medium", size: 24))
                            .foregroundColor(.white)
                            .padding(.top, 56)
                    }
                )
                .frame(height: 120) 
            ScrollView(showsIndicators: false){
                VStack(spacing: 0){
                    Image("ic_parceldeliveryimg")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width,height: 223)
                    HStack {
                        Text("Single Delivery")
                            .font(.custom("Poppins-Semibold", size: 18))
                        .foregroundColor(.black)
                        .padding([.leading,.top],24)
                        Spacer()
                    }
                    HStack {
                        Text("with this feature you can send any item from one pick up point to a single destination")
                            .font(.custom("Poppins-Regular", size: 14))
                        .foregroundColor(.black)
                        .padding(.leading,24)
                        .padding(.top,16)
                        Spacer()
                    }
                }
            }
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    ParcelDeliveryView()
}
