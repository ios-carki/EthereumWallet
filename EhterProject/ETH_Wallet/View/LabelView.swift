//  LabelView.swift
//
//  Created by Owen on 2023/10/05
	

import SwiftUI

struct LabelView: View {
    enum Theme {
        case none
        case clear
    }
    
    var text: String
    var theme: Theme
    
    var body: some View {
        Text(text)
        .frame(maxWidth: .infinity, alignment: .center)
        .frame(height: 50)
        .opacity(1)
        .background((theme == .none) ? Color.mainOrangeColor : Color.clear)
        .foregroundColor(.white)
        .cornerRadius(12.0)
        .overlay(
            RoundedRectangle(cornerRadius: 12.0)
                .stroke(Color.mainOrangeColor, lineWidth: 1.5).frame(height:48)
        )
        .font(.footnote)
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView(text: "asdf", theme: .clear)
    }
}
