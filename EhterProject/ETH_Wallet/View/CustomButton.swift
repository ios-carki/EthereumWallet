//  CustomButton.swift
//
//  Created by Owen on 2023/10/05
	

import SwiftUI

struct CustomButton: View {
    
    private var disabled : Binding<Bool>?
    private var title: String?
    private var backgroundColor: Color?
    private var borderColor: Color?
    private var textColor: Color?
    private var buttonClick: (()->Void)?
    private var cornerRadius: CGFloat?
    private var truncationMode: Text.TruncationMode?
    
    enum CustomButtonType {
        case normal
        case clear
        case gray
        
        case primary
        case white
        case transparent
    }
    
    var body: some View {
        VStack{
            Button {
                buttonClick?()
            } label: {
                Text(title ?? "")
                .frame(maxWidth: .infinity, alignment: .center)
                .frame(height: 50)
                .opacity(disabled?.wrappedValue ?? false ? 0.5 : 1)
                .background(
                    (disabled?.wrappedValue == true) ? Color.gray : backgroundColor
                )
                .foregroundColor((disabled?.wrappedValue == true) ? .white : textColor)
                .cornerRadius(cornerRadius ?? 12.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 12.0)
                    .stroke(
                        (disabled?.wrappedValue ?? false) ? .gray : (borderColor ?? .mainOrangeColor),
                        lineWidth: 1.5
                    ).frame(height:48)
                )
                .font(.footnote)
                .truncationMode(truncationMode ?? Text.TruncationMode.tail)
            }.disabled(disabled?.wrappedValue ?? false)
        }
    }
}

extension CustomButton{
    func setDisabled(disabled: Binding<Bool>?) -> Self {
        var copy = self
        copy.disabled = disabled
        return copy
    }
    func setTitle(title: String?) -> Self{
        var copy = self
        copy.title = title
        return copy
    }
    func setType(type: CustomButtonType?) -> Self{
        var copy = self
        if type == .normal {
            copy.backgroundColor = .mainOrangeColor
            copy.borderColor = .clear
            copy.textColor = .white
        }
        
        if type == .clear {
            copy.backgroundColor = .clear
            copy.borderColor = .mainOrangeColor
            copy.textColor = .mainOrangeColor
        }
        
        if type == .gray {
            copy.backgroundColor = .gray800
            copy.borderColor = .clear
            copy.textColor = .gray400
        }
        
        return copy
    }
    
    func setTruncateMode(_ mode: Text.TruncationMode) -> Self{
        var copy = self
        copy.truncationMode = mode
        return copy
    }
    
    func click(_ click: (()->Void)?) -> Self{
        var copy = self
        copy.buttonClick = click
        return copy
    }
    
    func setCornerRadius(radius: CGFloat?) -> Self {
        var copy = self
        copy.cornerRadius = radius
        
        return copy
    }
}

struct CustomButtonPreview: PreviewProvider {
    static var previews: some View {
        CustomButton()
            .setTitle(title: "import wallet")
            .setType(type: .clear)
    }
}
