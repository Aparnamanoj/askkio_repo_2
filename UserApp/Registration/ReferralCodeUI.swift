//
//  CreatePasswordUI.swift
//  testsui
//
//  Created by Apple on 08/06/24.
//

import SwiftUI

struct ReferralCodeUI: View {
    @Environment(\.dismiss) private var dismiss
   @StateObject private var viewmodel = ReferralCodeViewModel()
    @State private var isPasswordVisible: Bool = false
    var body: some View {
        NavigationView{
            VStack{
                VStack(alignment: .leading,spacing: 0){
                    HStack{
                        Button {
                            dismiss()
                        } label: {
                            Circle()
                                .foregroundColor(Color.white)
                                .shadow(color: .gray, radius: 4)
                                .opacity(5)
                                .frame(width: 50,height: 60)
                                .overlay(
                                    Image("ic_nav_bar_back")
                                        .resizable()
                                        .frame(width: 25,height: 30)
                                )
                        }
                        Spacer()
                    }
                    .padding(.leading,25)
                    .padding(.top,70)
                    
                    Spacer()
                        .frame(height: 45)
                    Text("Do you have a referral code?")
                        .font(.custom("Poppins-Medium", size: 27))
                        .padding(.leading,30)
                    
                    Spacer()
                        .frame(height: 40)
                    HStack{
                        TextField("Referral Code", text: $viewmodel.referralText)
                            .font(.custom("Poppins-Regular", size: 20))
                            .padding(.leading,30)
                        Button(action: {
                            viewmodel.referralSheet.toggle()
                        }, label: {
                            Image("optional")
                                .resizable()
                                .renderingMode(.template)
                                .foregroundColor(Color(hex: "#00AAD6"))
                                .frame(width: 30,height: 30)
                                .padding(.trailing,30)
                        })
                        .sheet(isPresented: $viewmodel.referralSheet) {
                            ReferralInviteView()
                            .frame(width: UIScreen.main.bounds.width)
                               .presentationDetents([.height(UIScreen.main.bounds.height - 350)])
                                                                        }
                    }
                    
                    Rectangle()
                        .foregroundColor(Color.black)
                        .opacity(0.5)
                        .frame(height: 2)
                        .padding([.leading,.trailing],25)
                        .padding(.top,10)
                    
                    Text("*Optional")
                        .font(.custom("Poppins-Regular", size: 19))
                        .foregroundColor(Color.gray)
                        .padding(.leading,50)
                        .padding(.top,10)
                    Spacer()
                    NavigationLink(destination: TabHomePage()){
                        HStack{
                            Spacer()
                            Circle()
                                .fill(Color(hex: "#00AAD6"))
                                .shadow(radius: 5)
                                .frame(width: 80, height: 80)
                                .overlay(
                                    Image("nextBarButton")
                                        .renderingMode(.template)
                                        .resizable()
                                        .foregroundColor(.white)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 25, height: 25)
                                )
                        }
                        .padding(.trailing,30)
                        .padding(.bottom,27)
                    }
                }
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarBackButtonHidden(true)
        .navigationViewStyle(.stack)
        
}
}

#Preview {
    ReferralCodeUI()
}
