//
//  ReferralInviteView.swift
//  UserApp
//
//  Created by jizan k on 28/06/24.
//

import SwiftUI

struct ReferralInviteView: View {
    
    var body: some View {
        VStack {
            Image("invite")
                .resizable()
                .frame(width: 337,height: 227)
            Spacer().frame(height: 40)
            Text("What is Referral / Invite Code ?")
                .font(.custom("Roboto-Bold", size: 21))
            Spacer().frame(height: 15)
            Text("Enter the referral code provided to you.Your friend will earn referral reward once you pay for any service.")
                .font(.custom("Roboto-Regular", size: 18))
                .padding([.leading,.trailing],20)
            Spacer().frame(height: 30)
            Button(action: {
                
            }, label: {
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color(hex: "#00AAD6"))
                    .overlay(
                        Text("OK")
                            .foregroundColor(.white)
                            .font(.custom("Roboto-Bold", size: 18))
                    )
                    .frame(height: 50)
                    .padding([.leading,.trailing],20)
            })
        }
        Spacer()
    }
}

#Preview {
    ReferralInviteView()
}
