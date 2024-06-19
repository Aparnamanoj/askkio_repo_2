//
//  HomeMoreoptions.swift
//  UserApp
//
//  Created by jizan k on 19/06/24.
//

import SwiftUI

struct HomeMoreoptions: View {
    var serviceDatas: ServiceDatas
    var body: some View {
        ZStack {
            VStack{
                Circle()
                    .shadow(radius: 6)
                    .overlay(
                        Image(serviceDatas.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 70,height: 75)
                    )
                    .frame(width: 60,height: 60)
                Spacer()
                    .frame(height: 10)
                Text(serviceDatas.category)
                    .font(.custom("Popiins-Medium", size: 18))
                    .multilineTextAlignment(.center)
                    .padding([.leading,.trailing],10)
                    .frame(width: 120,height: 50)
            }
        }
        .frame(height: 130)
    }
}

#Preview {
    HomeMoreoptions(serviceDatas: MoreOptionsList[0])
}