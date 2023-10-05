//
//  TestViewModel.swift
//  EhterProject
//
//  Created by HESSEGG on 2023/10/04.
//

import Foundation
import BigInt
import web3swift
import Web3Core

final class TestViewModel: ObservableObject {
    let provider: Web3Provider = Web3HttpProvider(url: URL(string: "https://sepolia.infura.io/v3/225eb4e6a6d84b28b4497a3b42a423ad")!, network: .Custom(networkID: 11155111))
    
//    let provider: Web3Provider//Web3Provider(url: URL(string: "https://sepolia.infura.io/v3/225eb4e6a6d84b28b4497a3b42a423ad")!)
    let url = "https://sepolia.infura.io/v3/225eb4e6a6d84b28b4497a3b42a423ad"
    
    @Published var mnemonicKey: String = ""
    @Published var walletAddress: String = ""
    
    @Published var privateKey: String = ""
    
    
    @Published var balance: String = ""
    
    @Published var ethAddress: EthereumAddress?
    
    @Published var fixAddress: String = "0x4F285ba4b1ca4C37a83D952D011992e217B873D3"
    @Published var fixTestBalance: String = ""
    //Infura
    @Published var infuraMnemonicKey: String = ""
    @Published var infuraWalletAddress: String = ""
    @Published var infuraPrivateKey: String = ""
    @Published var infuraBalance: String = ""
    @Published var infuraETHAddress: EthereumAddress?
    
    
    //Infura
    
    func createWalletAddress() {
        do {
            
            let tempMnemonic = try? BIP39.generateMnemonics(bitsOfEntropy: 256, language: BIP39Language.korean)
            print(tempMnemonic)
//            let tempMnemonic = try? BIP39.generateMnemonics(bitsOfEntropy: 256, language: .english)
            guard let tMnemonics = tempMnemonic else {
                print("Else 실행")
                return
            }
            
            print("니모닉 키: ", tMnemonics)
            mnemonicKey = tMnemonics
            self.privateKey = mnemonicKey
            
            //Infura
            infuraMnemonicKey = tMnemonics
            self.infuraPrivateKey = infuraPrivateKey
            
            let tempWalletAddress = try? BIP32Keystore(mnemonics: mnemonicKey, password: "", prefixPath: "m/44'/77777'/0'/0")
            guard let walletAddress = tempWalletAddress?.addresses?.first else {
                return
            }
            self.walletAddress = walletAddress.address
            
            //Infura
            self.infuraWalletAddress = walletAddress.address
            
            let privateKey = try tempWalletAddress?.UNSAFE_getPrivateKeyData(password: "", account: walletAddress)
        } catch {
            
        }
    }
    
    func importWalletWith(privateKey: String) {
        let formattedKey = privateKey.trimmingCharacters(in: .whitespacesAndNewlines)
        guard let dataKey = Data.fromHex(formattedKey) else {
            return
        }
        
        do {
            let keyStore = try EthereumKeystoreV3(privateKey: dataKey, password: "")
            
            if let myWeb3KeyStore = keyStore {
                let manager = KeystoreManager([myWeb3KeyStore])
                let address = keyStore?.addresses?.first//T##keystores: [PlainKeystore]##[PlainKeystore]
                
                print("Address :::>>>>> ", address)
                print("manager.addresses :::>>>>> ", manager.addresses)
                
                let walletAddress = manager.addresses?.first?.address
                self.walletAddress = walletAddress ?? "asdofihjnasdoifjioasdjf"
                
                print("Wallet Address: ", walletAddress)
            } else {
                print("Errror: ")
            }
            
        } catch {
            print("error creating keyStore")
            print("Private key error.")
        }
    }
    
    
    func getFixBalance() async {
        let web3 = Web3(provider: provider)
        if let balance = try? await web3.eth.getBalance(for: EthereumAddress(from: fixAddress)!) {
            print("잔액: ", balance)
            
            self.fixTestBalance = String(balance)
        }
    }
    
    func getBalance() async {
        
        let web3 = Web3(provider: provider)
        if let balance = try? await web3.eth.getBalance(for: EthereumAddress(from: walletAddress)!) {
            print("잔액: ", balance)
            
            self.balance = String(balance)
        }
        
        if let balance2 = try? await web3.eth.getBalance(for: EthereumAddress(from: infuraWalletAddress)!) {
            print("인푸라 잔액: ", balance2)
            self.infuraBalance = String(balance2)
        }
        
    }
    
    func send(value: BigUInt) async {
        let web3 = Web3(provider: provider)
//        var transaction: CodableTransaction = .emptyTransaction
//        transaction.from = EthereumAddress(from: fixAddress)
//        transaction.to = EthereumAddress(from: walletAddress)!
//        transaction.value = value
//        transaction.gasLimit = .zero
//        transaction.gasPrice = .randomInteger(lessThan: 20000000000)
//
//        try? await web3.eth.send(transaction)
        let receiveAddress = walletAddress
        let amount = BigUInt(5000)
        let fromAddress = fixAddress
        var transaction: CodableTransaction = .emptyTransaction
        transaction.nonce = try! await web3.eth.getTransactionCount(for: EthereumAddress(from: fromAddress)!)
        transaction.gasPrice = BigUInt(20)
        transaction.gasLimit = BigUInt(21000)
        transaction.to = EthereumAddress(from: receiveAddress)!
        transaction.from = EthereumAddress(from: fromAddress)!
        transaction.value = amount
        transaction.data = Data()
        
        let result = try? await web3.eth.send(transaction)
        
        if let txHash = result?.hash {
            print("트랜잭션 전송 완료. 트랜잭션 해시: \(txHash)")
        } else {
        }
    }
}

//2999358787732185000
//2999358787732185000
