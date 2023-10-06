//  CustomLoadingView.swift
//
//  Created by Owen on 2023/10/06
	

import SwiftUI

struct CustomLoadingView: View {
    @State private var scale: CGFloat = 1.0
    @State private var rotation: Double = 0.0
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.3).ignoresSafeArea()
            HStack(spacing: 50) {
                ForEach(0..<3, id: \.self) { index in
                    RoundedRectangle(cornerRadius: 18)
                        .foregroundColor(.mainOrangeColor)
                        .frame(width: 40, height: 40)
                        .scaleEffect(scale)
                        .rotationEffect(.degrees(rotation))
                        .animation(
                            Animation.easeInOut(duration: 0.7)
                                .repeatForever()
                        )
                        .onAppear {
                            self.scale = 1.5
                            self.rotation = 360.0
                        }
                }
            }
            
        }
    }
}

struct CustomLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        CustomLoadingView()
    }
}
