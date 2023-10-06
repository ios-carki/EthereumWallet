//  CoinCardView.swift
//
//  Created by Owen on 2023/10/06
	

import SwiftUI

struct CoinCardView: View {
    var balance: String
    var address: String
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(Color(red: 60/255, green: 60/255, blue: 60/255))
                .overlay(
                    VStack {
                        HStack(spacing: 16) {
                            Circle()
                                .foregroundColor(Color(red: 83/255, green: 107/255, blue: 236/255))
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
                                    Text("Owen의 Wallet (ETH)")
                                        .foregroundColor(.white)
                                        .font(.title)
                                    Spacer()
                                    Image(systemName: "doc.on.doc.fill")
                                        .foregroundColor(.white)
                                        .frame(width: 20, height: 30)
                                }
                                
                                
                                Text(address)
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
                                            Text(balance + " ETH")
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
                .padding(.top, 16)
            
            HStack(alignment: .center, spacing: 12) {
                
                HStack(spacing: 4) {
                    Image(systemName: "paperplane.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    Text("Send")
                        .foregroundColor(.white)
                        .font(.headline)
                }
                
                Spacer()
                
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 1)
                    .frame(maxHeight: .infinity)
                
                Spacer()
                
                HStack(spacing: 4) {
                    Image(systemName: "chart.bar.doc.horizontal.fill")
                        .resizable()
                        .frame(width: 25, height: 20)
                        .foregroundColor(.white)
                    Text("History")
                        .foregroundColor(.white)
                        .font(.headline)
                }
                
                Spacer()
                
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 1)
                    .frame(maxHeight: .infinity)
                
                Spacer()
                
                HStack(spacing: 4) {
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    Text("Profile")
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 16)
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .background(Color(red: 60/255, green: 60/255, blue: 60/255))
            .cornerRadius(12)
        }
    }
}

struct CoinCardView_Previews: PreviewProvider {
    static var previews: some View {
        CoinCardView(balance: "123.1234", address: "0xSADIOJfjasdfnjasduiho1239asdfji")
    }
}
