//  AddWalletView.swift
//
//  Created by Owen on 2023/10/06
	

import SwiftUI

struct AddWalletView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .foregroundColor(Color(red: 60/255, green: 60/255, blue: 60/255))
            .frame(height: 70)
            .overlay(
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
            )
    }
}

struct AddWalletView_Previews: PreviewProvider {
    static var previews: some View {
        AddWalletView()
    }
}
