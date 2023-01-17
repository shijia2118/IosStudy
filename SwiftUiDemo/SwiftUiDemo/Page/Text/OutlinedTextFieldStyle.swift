//
//  OutlinedTextFieldStyle.swift
//  SwiftUiDemo
//
//  Created by UI Seeyou on 2023/1/17.
//

import SwiftUI

struct OutlinedTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
            configuration
                .padding()
                .overlay {
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .stroke(Color(UIColor.systemGray4), lineWidth: 2)
                }
                
    }
}

struct OutlinedTextFieldStyle_Previews: PreviewProvider {
    static var previews: some View {
            TextField("Type something...", text: .constant(""))
                .textFieldStyle(OutlinedTextFieldStyle())
                .previewLayout(.sizeThatFits)
                .padding()
        }
}
