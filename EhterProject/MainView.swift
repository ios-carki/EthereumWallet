//
//  MainView.swift
//  EhterProject
//
//  Created by HESSEGG on 2023/09/27.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(Color(red: 60/255, green: 60/255, blue: 60/255))
                .overlay(
                    VStack {
                        HStack(spacing: 16) {
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60)
                                .overlay(
                                    VStack(spacing: 4) {
                                        Spacer()
                                        HStack {
                                            Spacer()
                                            RoundedRectangle(cornerRadius: 4)
                                                .foregroundColor(Color(red: 60/255, green: 60/255, blue: 60/255))
                                                .frame(width: 30, height: 10)
                                        }
                                        
                                        HStack {
                                            Spacer()
                                            RoundedRectangle(cornerRadius: 4)
                                                .foregroundColor(Color(red: 60/255, green: 60/255, blue: 60/255))
                                                .frame(width: 20, height: 10)
                                        }.padding(.bottom, 12)
                                    }
                                    
                                )
                            VStack(alignment: .leading, spacing: 4) {
                                HStack {
                                    Text("Owen의 Wallet")
                                        .foregroundColor(.white)
                                        .font(.title)
                                    Spacer()
                                    Image(systemName: "doc.on.doc.fill")
                                        .foregroundColor(.white)
                                        .frame(width: 20, height: 30)
                                }
                                
                                
                                Text("0x89132b123eodkANBCUHSADUIHASDIU2SAIUDASIUDH")
                                    .foregroundColor(.white.opacity(0.4))
                                    .font(.caption)
                                    .lineLimit(0)
                                    .truncationMode(.middle)
                            }
                        }
                        
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundColor(.gray700)
                            .overlay(
                                HStack {
                                    Spacer()
                                    VStack(alignment: .trailing, spacing: 16) {
                                        VStack(alignment: .trailing, spacing: 8) {
                                            Text("Balance")
                                                .foregroundColor(.white)
                                                .font(.largeTitle)
                                            Text("123.123412 ETH")
                                                .foregroundColor(.white)
                                                .font(.title3)
                                        }
                                    }
                                    .padding(.horizontal, 16)
                                }
                            )
                    }.padding(.vertical, 12).padding(.horizontal, 16)
                )
                .frame(height: 250)
        }
        .padding(.horizontal, 16)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
