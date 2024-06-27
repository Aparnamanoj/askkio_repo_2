import SwiftUI

struct TransactionView: View {
    @StateObject private var viewModel = TransactionViewModel()
    
    var body: some View {
        ZStack {
            Color.colorEDEDED
                .ignoresSafeArea(.all)
            VStack {
                TransactionViewTopView(selectedTab: $viewModel.selectedTabs)
                
                Spacer()
                if viewModel.filteredTransactions.isEmpty {
                    VStack {
                        Spacer()
                        Text("No Transaction found.")
                            .font(.custom("Roboto-Regular", size: 18))
                            .fontWeight(.regular)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else {
                    // Display transactions
                }
                Spacer()
            }
            .edgesIgnoringSafeArea(.top)
            
            if viewModel.isShowpoup {
                ZStack {
                    Color.gray.opacity(0.5)
                    VStack {
                        Text("hello")
                    }
                    .background(Color.white)
                }
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct TransactionViewTopView: View {
    @Binding var selectedTab: TransactionType
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                VStack {
                    Rectangle()
                        .foregroundColor(Color.accentColor)
                        .frame(height: 140)
                        .overlay(
                            HStack {
                                Button(action: {
                                    presentationMode.wrappedValue.dismiss()
                                }, label: {
                                    Image(systemName: "arrow.left")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(.white)
                                        .frame(width: 20, height: 20)
                                        .padding(.top, 20)
                                        .padding(.leading, 20)
                                })
                                
                                Spacer().frame(width: geometry.size.width * 0.1)
                                Text("My Transaction")
                                    .font(.custom("Roboto-Regular", size: 20))
                                    .foregroundColor(.white)
                                    .padding(.top, 20)
                                    .frame(maxWidth: .infinity, alignment: .center)
                                Spacer()
                                Button(action: {
                                }, label: {
                                    Image(systemName: "")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(.white)
                                        .frame(width: 30, height: 30)
                                        .padding(.top, 20)
                                        .padding(.trailing, 20)
                                })
                            }
                        )
                    
                    ZStack {
                        Rectangle()
                            .frame(height: 50)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                            .shadow(radius: 5)
                            .overlay(
                                HStack {
                                    Spacer().frame(width: 18)
                                    Button(action: {
                                        selectedTab = .all // Update selected tab state
                                    }) {
                                        Rectangle()
                                            .cornerRadius(20)
                                            .frame(width: geometry.size.width * 0.3, height: 40)
                                            .foregroundColor(selectedTab == .all ? .accentColor : .white)
                                            .overlay(
                                                Text("All")
                                                    .foregroundColor(selectedTab == .all ? .white : .black)
                                            )
                                    }
                                    Spacer().frame(width: 2)
                                    
                                    Button(action: {
                                        selectedTab = .credit // Update selected tab state
                                    }) {
                                        Rectangle()
                                            .cornerRadius(20)
                                            .frame(width: geometry.size.width * 0.3, height: 40)
                                            .foregroundColor(selectedTab == .credit ? .accentColor : .white)
                                            .overlay(
                                                Text("Credit")
                                                    .foregroundColor(selectedTab == .credit ? .white : .black)
                                            )
                                    }
                                    Spacer().frame(width: 2)
                                    
                                    Button(action: {
                                        selectedTab = .debit // Update selected tab state
                                    }) {
                                        Rectangle()
                                            .cornerRadius(20)
                                            .frame(width: geometry.size.width * 0.3, height: 40)
                                            .foregroundColor(selectedTab == .debit ? .accentColor : .white)
                                            .overlay(
                                                Text("Debit")
                                                    .foregroundColor(selectedTab == .debit ? .white : .black)
                                            )
                                    }
                                    Spacer().frame(width: 18)
                                }
                            )
                            .padding(.top, -35)
                            .padding(.horizontal, 10)
                    }
                }
            }
            .frame(height: 200)
        }
    }
}
