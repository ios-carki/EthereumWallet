//  CreateAccountView.swift
//
//  Created by Owen on 2023/10/05
	

import SwiftUI

struct CreateAccountView: View {
    @StateObject private var viewModel = CreateAccountViewModel()
    
    var body: some View {
        NavigationLink {
            SeedView(seed: viewModel.mnemonicText)
        } label: {
            LabelView(text: "Create Account", theme: .none)
        }
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
