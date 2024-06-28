//
//  ParcelDeliveryView.swift
//  UserApp
//
//  Created by jizan k on 27/06/24.
//

import SwiftUI

struct ParcelDeliveryView: View {
    @State private var tabBarVisible: Bool = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @StateObject private var viewModel = ParcelDeliveryViewModel()
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                Rectangle()
                    .fill(Color(hex: "#00AAD6"))
                    .overlay(
                        ZStack {
                            HStack {
                                Button(action: {
                                    self.tabBarVisible = true
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
                                .font(.custom("Roboto-Medium", size: 20))
                                .foregroundColor(.white)
                                .padding(.top, 56)
                        }
                    )
                    .frame(height: 100)
                ScrollView(showsIndicators: false){
                    VStack {
                        VStack(spacing: 0){
                            Image("ic_parceldeliveryimg")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width,height: 223)
                            Spacer().frame(height: 24)
                            HStack {
                                Text("Single Delivery")
                                    .font(.custom("Poppins-Semibold", size: 18))
                                    .foregroundColor(.black)
                                    .padding(.leading,24)
                                Spacer()
                            }
                            Spacer().frame(height: 16)
                            HStack {
                                Text("with this feature you can send any item from one pick up point to a single destination")
                                    .font(.custom("Poppins-Regular", size: 14))
                                    .foregroundColor(.black)
                                    .opacity(0.6)
                                    .padding(.leading,24)
                                    .padding(.trailing,20)
                                Spacer()
                            }
                        }
                        Spacer().frame(height: 16)
                        HStack(spacing: 20){
                            ForEach(viewModel.single_delivery.indices, id: \.self) { index in
                                ParceldeliveryCellView(paeceldata: viewModel.single_delivery[index])
                            }
                        }
                        Spacer().frame(height: 24)
                        HStack {
                            Text("Multi Delivery")
                                .font(.custom("Poppins-Semibold", size: 18))
                                .foregroundColor(.black)
                                .padding(.leading,24)
                            Spacer()
                        }
                        Spacer().frame(height: 16)
                        HStack {
                            Text("with this feature you can send any item from one pick up point to a single destination")
                                .font(.custom("Poppins-Regular", size: 14))
                                .foregroundColor(.black)
                                .opacity(0.6)
                                .padding(.leading,24)
                                .padding(.trailing,20)
                            Spacer()
                        }
                        Spacer().frame(height: 16)
                        HStack(spacing: 20){
                            ForEach(viewModel.multi_delivery.indices, id: \.self) { index in
                                ParceldeliveryCellView(paeceldata: viewModel.multi_delivery[index])
                            }
                        }
                    }
                        
                }
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
        }
        .toolbar(tabBarVisible ? .visible : .hidden, for: .tabBar)
        .navigationBarBackButtonHidden(true)
        .navigationViewStyle(.stack)
        .onAppear{
            hideTabBar()
        }
        .onDisappear{
            showTabBar()
        }
    }
    
    private func hideTabBar() {
            if let tabBarController = UIApplication.shared.windows.first?.rootViewController as? UITabBarController {
                tabBarController.tabBar.isHidden = true
            }
        }

        private func showTabBar() {
            if let tabBarController = UIApplication.shared.windows.first?.rootViewController as? UITabBarController {
                tabBarController.tabBar.isHidden = false
            }
        }
}

#Preview {
    ParcelDeliveryView()
}
