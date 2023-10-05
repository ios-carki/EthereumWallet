//  CreateAccountViewModel.swift
//
//  Created by Owen on 2023/10/05
	

import Foundation

import HDWalletKit

final class CreateAccountViewModel: ObservableObject {
    @Published var mnemonicText: String = MnemonicBuilder.generateMnemonic()
}
