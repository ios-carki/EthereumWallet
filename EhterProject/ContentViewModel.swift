//
//  ContentViewModel.swift
//  EhterProject
//
//  Created by HESSEGG on 2023/09/27.
//

import Foundation

import web3swift
import Web3Core
import BigInt

final class ContentViewModel: ObservableObject {
    
    @Published var mnemonicKey: String = ""
    @Published var ethereumAddress: String = ""
    
    func createAddress() {
        let userDir = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        let web3KeystoreManager = KeystoreManager.managerForPath(userDir + "/keystore")
        do {
            if web3KeystoreManager?.addresses?.count ?? 0 >= 0 {
                let tempMnemonics = try? BIP39.generateMnemonics(bitsOfEntropy: 256, language: .english)
                guard let tMnemonics = tempMnemonics else {
                    // 에러메시지 얼럿 띄우기
                    return
                }
                self.mnemonicKey = tMnemonics
                print(mnemonicKey)

                let tempWalletAddress = try? BIP32Keystore(mnemonics: self.mnemonicKey, password: "", prefixPath: "m/44'/77777'/0'/0")
                guard let walletAddress = tempWalletAddress?.addresses?.first else {
                    // Unable to create wallet 메시지 얼럿 띄우기
                    return
                }
                self.ethereumAddress = walletAddress.address
                let privateKey = try tempWalletAddress?.UNSAFE_getPrivateKeyData(password: "", account: walletAddress)
#if DEBUG
                print(privateKey, "Is the private key")
#endif
                let keyData = try? JSONEncoder().encode(tempWalletAddress?.keystoreParams)
                FileManager.default.createFile(atPath: userDir + "/keystore" + "/key.json", contents: keyData, attributes: nil)
            }
        } catch {

        }

    }
    
    func balance() {
    }
}
