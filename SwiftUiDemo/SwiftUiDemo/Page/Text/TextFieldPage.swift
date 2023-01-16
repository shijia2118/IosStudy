//
//  TextFieldPage.swift
//  SwiftUiDemo
//
//  Created by UI Seeyou on 2023/1/6.
//

import SwiftUI

struct TextFieldPage: View {
    
    @State private var username: String = ""
    @State private var isEditing = false

    
    var body: some View {
        List{
            Section(header:Text("键盘样式")){
                NavigationLink(
                    destination: KeyboardTypePage(),
                    label: {
                       Text("点击查看键盘样式详情")
                    })
                
            }
            Group{
                Section(header:Text("IOS2种展现样式")){
                    VStack(alignment: .leading){
                        Text("DefaultTextFieldStyle")
                        TextField("请输入...",text: $username)
                            .textFieldStyle(DefaultTextFieldStyle())
                        Text("RoundedBorderTextFieldStyle")
                        TextField("请输入...",text: $username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        
                    }
                }
            }
        }
    }
}

struct TextFieldPage_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldPage()
    }
}
