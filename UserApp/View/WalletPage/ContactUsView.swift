import SwiftUI

struct ContactUsView: View {
   @StateObject private var viewmodel = ContactUsViewModel()
    @FocusState private var isTextEditorFocused: Bool
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
                        Text("Contact Us")
                            .font(.custom("Roboto-Medium", size: 23))
                            .foregroundColor(.white)
                            .padding(.top, 56)
                    }
                )
                .frame(height: 120)
            ScrollView {
                VStack {
                    Image("ic_contact_us")
                        .resizable()
                        .frame(width: 130, height: 130)
                        .padding(.top, 20)
                    Spacer()
                        .frame(height: 25)
                    Text("How can we help you?")
                        .font(.custom("Roboto-Bold", size: 25))
                    Spacer()
                        .frame(height: 15)
                    Text("Your feedback is very important to us. We consider your feedback very seriously and work hard to provide you with the best possible solution at the earliest.")
                        .font(.custom("Poppins-Regular", size: 18))
                        .opacity(0.6)
                        .padding([.leading, .trailing], 30)
                    Spacer()
                        .frame(height: 30)
                    HStack {
                        Text("What's your feedback about?")
                            .font(.custom("Poppins-Regular", size: 14))
                            .padding(.leading, 30)
                        Spacer()
                    }
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color.gray)
                        .frame(height: 60)
                        .padding([.leading, .trailing], 30)
                        .overlay(
                            TextField("Tap to write..", text: $viewmodel.feedback)
                                .padding([.leading, .trailing], 40)
                        )
                    Spacer().frame(height: 45)
                    HStack {
                        Text("Please tell us something in detail")
                            .font(.custom("Poppins-Regular", size: 14))
                            .padding(.leading, 30)
                        Spacer()
                    }
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color.gray)
                        .background(
                            GeometryReader { geometry in
                                TextField("Please tell us something in detail", text: $viewmodel.details, axis: .vertical)
                       
                                    .frame(width: geometry.size.width)
                            }
                            .padding([.leading, .trailing], 10)
                            .padding(.top, 10)
                        )
                        .frame(height: max(60, textFieldHeight))
                        .padding([.leading, .trailing], 30)
                    Spacer().frame(height: 45)
                    Button(action: {
                        // Submit action
                    }, label: {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(Color(hex: "#00AAD6"))
                            .frame(width: 350, height: 50)
                            .overlay(
                                Text("SUBMIT")
                                    .font(.custom("Poppins-Semibold", size: 18))
                                    .foregroundColor(.white)
                            )
                    })
                    .padding([.leading, .trailing], 20)
                }
                .frame(width: UIScreen.main.bounds.width)
            }
        }
        .edgesIgnoringSafeArea(.top)
    }

   
    private var textFieldHeight: CGFloat {
      
        let baseHeight: CGFloat = 60
        let lineHeight: CGFloat = 20
        let charCount = viewmodel.details.count
        let lines = max(1, charCount / 40)

        return baseHeight + CGFloat(lines) * lineHeight
    }
}

#Preview {
    ContactUsView()
}
