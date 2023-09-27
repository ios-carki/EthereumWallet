//
//  MainView.swift
//  EhterProject
//
//  Created by HESSEGG on 2023/09/27.
//

import SwiftUI

struct MainView: View {
    var wallet1: some View {
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
    var wallet2: some View {
        VStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(Color(red: 60/255, green: 60/255, blue: 60/255))
                .overlay(
                    VStack {
                        HStack(spacing: 16) {
                            Circle()
                                .foregroundColor(Color(red: 255/255, green: 215/255, blue: 0/255))
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
                                    Text("Owen의 Wallet (BTC)")
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
                                            Text("1.123412 BTC")
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
    
    var addWallet: some View {
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
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.7).ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 12) {
                    wallet1
                    wallet2
                    addWallet
                }
            }
            .padding(.horizontal, 16)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
