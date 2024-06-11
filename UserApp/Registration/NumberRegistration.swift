//
//  NumberRegistration.swift
//  UserApp
//
//  Created by jizan k on 22/05/24.
//

import SwiftUI

struct NumberRegistration: View {
    var body: some View {
        NavigationView{
            VStack{
                BackButtonClick()
                Spacer()
                    .frame(height: 40)
                TextLbl()
                Spacer()
                    .frame(height: 10)
                CountryLbl()
                Spacer()
                    .frame(height: 1)
                CountryCode()
                Spacer()
                    .frame(height: 0)
                Underline()
                Spacer()
                    .frame(height: 20)
                ChooseOptionLbl()
                Spacer()
                    .frame(height: 20)
                TermsAbdConditionsLbl()
                Spacer()
                HStack {
                Spacer()
                NavigateButtonClick()
                    
                }
                .padding([.bottom, .trailing], 20)
            }
        }
        .navigationBarHidden(true)
    }

}
    
    



#Preview {
    NumberRegistration()
}



struct BackButtonClick: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        HStack{
            Button(action: {
                dismiss()
            }, label: {
                Circle()
                    .foregroundColor(Color.white)
                    .shadow(color: .gray, radius: 4)
                    .opacity(5)
                    .frame(width: 50,height: 60)
                    .overlay(
                        Image("ic_nav_bar_back")
                            .resizable()
                            .frame(width: 20,height: 25)
                    )
            })
            Spacer()
        }
        .padding(.top,20)
        .padding(.leading,20)
    }
}

struct TextLbl: View {
    var body: some View {
        HStack{
            Text("Enter your mobile number")
                .font(.system(size: 28))
                .fontWeight(.regular)
            Spacer()
        }
        .padding(.top,10)
        .padding(.leading,20)
    }
}

struct CountryLbl: View {
    var body: some View {
        HStack{
            Text("Country")
                .font(.system(size: 18))
                .fontWeight(.regular)
                .foregroundColor(.gray)
            Spacer()
        }
        .padding(.top,10)
        .padding(.leading,20)
    }
}

struct CountryCode: View {
    @State private var showSheet = false
    @State private var MobileText: String = ""
    var body: some View {
        HStack{
            Button(action: {
                showSheet.toggle()
            }, label: {
                HStack {
                    Image("CountryFlag")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    .frame(width: 30,height: 30)
                    
                    Text("+1242")
                        .font(.system(size: 14))
                        .foregroundColor(.black)
                }
            })
            
            .sheet(isPresented: $showSheet) {
                        CountrySelectionUI()
                    .frame(width: min(UIScreen.main.bounds.width, 600))
                    }
            
            
            Spacer()
                .frame(width: 50)
                    TextField("Mobile", text: $MobileText)
            
        }
        .padding(.top,5)
        .padding(.leading,20)
        
    }
}

struct Underline: View {
    var body: some View {
        HStack{
            Rectangle()
                .frame(width: 110,height: 1)
                .foregroundColor(.gray)
            Spacer()
                .frame(width: 20)
            Rectangle()
                .frame(height: 1,alignment: .trailing)
                .foregroundColor(.gray)
            Spacer()
        }
        .padding(.top,1)
        .padding(.leading,20)
    }
}

struct ChooseOptionLbl: View {
    @State var logpage: Bool = false
    var body: some View {
        HStack(spacing:2){
            Text("Or choose other login options")
                .font(.system(size: 18))
                .fontWeight(.regular)
                .foregroundColor(.cyan)
            
            Button(action: {
              
            }, label: {
                HStack {
                    Image("RightArrow")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.cyan)
                    .frame(width: 20,height: 30)
                }
            })
            Spacer()
        }
        .padding(.top,10)
        .padding(.leading,20)
    }
}

struct TermsAbdConditionsLbl: View {
    var body: some View {
            NavigationLink(destination: PrivacyPolicyUI()) {
                HStack {
                    Text("By proceeding, I accept the ")
                        .font(.system(size: 14))
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                    +
                    Text("Terms and Conditions & Privacy Policy")
                        .font(.system(size: 14))
                        .fontWeight(.regular)
                        .foregroundColor(.cyan)
                }
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.leading, 20)
        }

}

struct NavigateButtonClick: View {
    var body: some View {
        NavigationLink(destination: CreatePasswordUI()) {
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Circle()
                        .fill(Color.cyan)
                        .stroke(Color.cyan, lineWidth: 2.0)
                        .shadow(radius: 5)
                        .frame(width: 70, height: 70)
                        .overlay(
                            Image("nextBarButton")
                                .renderingMode(.template)
                                .resizable()
                                .foregroundColor(.white)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                        )
                }
                .padding(.trailing, 10)
            }
        }
    }
}


