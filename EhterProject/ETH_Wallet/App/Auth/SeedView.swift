//  SeedView.swift
//
//  Created by Owen on 2023/10/05
	

import SwiftUI

struct SeedView: View {
    @State var tag: Int? = nil
    var seed: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Mnemonic Key")
            HStack {
                Text(seed)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(Color.white)
            .cornerRadius(6)
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.41, green: 0.41, blue: 0.41), lineWidth: 2)
            )
            
            CustomButton()
                .setType(type: .normal)
                .setTitle(title: "Copy to clipboard")
                .click({
                    UIPasteboard.general.string = seed
                })
                .padding(.top, 16)
            
            Spacer()
            
            NavigationLink(destination: MainView(), tag: 1, selection: self.$tag) {
                EmptyView()
            }
            
            CustomButton()
                .setType(type: .normal)
                .setTitle(title: "Start")
                .click {
                    print("니모닉 키 저장됨")
                    self.tag = 1
                    Constants.mnemonicKey = seed
                }
            
//            NavigationLink {
//                MainView()
//            } label: {
//                LabelView(text: "Start", theme: .none)
//                    .onTapGesture {
//                        print("니모닉 키 저장됨")
//                        Constants.mnemonicKey = seed
//                    }
//            }
            
        }
        .padding(.horizontal, 16)
    }
}

struct SeedView_Previews: PreviewProvider {
    static var previews: some View {
        SeedView(seed: "razor frog dry stamp sort section bright night hammer jealous hundred keep filter radar mixture before coil fury slide picture empower cluster album clock")
    }
}

