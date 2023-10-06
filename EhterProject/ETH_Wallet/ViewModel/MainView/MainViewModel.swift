//  MainViewModel.swift
//
//  Created by Owen on 2023/10/06
	

import Foundation
import BigInt
import web3swift
import Web3Core

@MainActor
final class MainViewModel: ObservableObject {
    @Published var walletAddress: String = ""
    @Published var privateKey: String = ""
    @Published var balance: String = ""
    //Loading
    @Published var isLoading: Bool = false
    
    let provider: Web3Provider = Web3HttpProvider(url: URL(string: "https://sepolia.infura.io/v3/225eb4e6a6d84b28b4497a3b42a423ad")!, network: .Custom(networkID: 11155111))
    
    func createAccount() async {
        let web3 = Web3(provider: provider)
        
        do {
            self.isLoading = true
            let tempWalletAddress = try? BIP32Keystore(mnemonics: Constants.mnemonicKey ?? "0x", password: "", prefixPath: "m/44'/77777'/0'/0")
            guard let walletAddress = tempWalletAddress?.addresses?.first else {
                return
            }
            self.walletAddress = walletAddress.address
            
            let privateKey = try tempWalletAddress?.UNSAFE_getPrivateKeyData(password: "", account: walletAddress)
            
            //Get Balance
            
            if let balance = try? await web3.eth.getBalance(for: EthereumAddress(from: self.walletAddress)!) {
                print("잔액: ", balance)
                
                self.balance = String(balance)
            }
        } catch {
            print("Private Key Error!")
        }
        
        isLoading = false
    }
}
