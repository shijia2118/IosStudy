//
//  OutlineTextFieldStyle.swift
//  SwiftUiDemo
//
//  Created by UI Seeyou on 2023/1/17.
//

import SwiftUI

struct UnderlineTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
            configuration
                .padding(.vertical, 8)
                .background(
                    VStack {
                        Spacer()
                        Color(UIColor.systemGray4)
                            .frame(height: 1)
                    }
                )      
    }
}

struct UnderlineTextFieldStyle_Previews: PreviewProvider {
    static var previews: some View {
        TextField("Type something...", text: .constant(""))
                    .textFieldStyle(UnderlineTextFieldStyle())
                    .previewLayout(.sizeThatFits)
                    .padding()
    }
}
