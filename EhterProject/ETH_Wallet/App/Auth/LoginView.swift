//  LoginView.swift
//
//  Created by Owen on 2023/10/05
	

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [.gray, .black.opacity(0.7)], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
                
                VStack {
                    NavigationLink {
                        CreateAccountView()
                    } label: {
                        LabelView(text: "Create Account", theme: .none)
                    }
                    
                    NavigationLink {
                        ImportAccountView()
                    } label: {
                        LabelView(text: "Import Account", theme: .clear)
                    }
                }
                .padding(.horizontal, 16)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
