//
//  ContentView.swift
//  EhterProject
//
//  Created by HESSEGG on 2023/09/27.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.blue)
                .overlay(
                    Text(viewModel.ethereumAddress)
                        .foregroundColor(.white)
                        .font(.callout)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .padding(.all, 20)
                )
                .frame(height: 90)
            
            Button {
                viewModel.createAddress()
            } label: {
                Text("Address 생성")
            }.buttonStyle(.borderedProminent)

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
