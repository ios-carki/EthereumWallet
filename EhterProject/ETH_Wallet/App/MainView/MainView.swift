//
//  MainView.swift
//  EhterProject
//
//  Created by HESSEGG on 2023/09/27.
//

import SwiftUI

struct MainView: View {
    @StateObject private var viewModel = MainViewModel()
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.7).ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 12) {
                    CoinCardView(balance: viewModel.balance, address: viewModel.walletAddress)
                    AddWalletView()
                }
            }
            .padding(.horizontal, 16)
            
            if viewModel.isLoading {
                CustomLoadingView()
            }
        }
        .onAppear(perform: {
            Task {
                await viewModel.createAccount()
            }
        })
        .navigationBarHidden(true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
