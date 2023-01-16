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
            Section(header:Text("键盘样式").bold()){
                NavigationLink(
                    destination: KeyboardTypePage(),
                    label: {
                       Text("点击查看键盘样式详情")
                    })
                
            }
            Group{
                Section(header:Text("IOS2种展现样式").bold()){
                    VStack(alignment: .leading){
                        Text("DefaultTextFieldStyle")
                        TextField("请输入...",text: $username)
                            .textFieldStyle(DefaultTextFieldStyle())
                        Text("RoundedBorderTextFieldStyle")
                        TextField("请输入...",text: $username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                }
                
                Section(header:Text("常规属性").bold()){
                    VStack(alignment: .leading){
                        Text("字体大小")
                        TextField("请输入...",text: $username)
                            .font(.system(size: 20))
                        Text("文本外边距")
                        TextField("请输入...",text: $username)
                            .padding(15)
                        Text("最大行数")
                        TextField("请输入...",text: $username)
                            .lineLimit(2)
                        Text("清除键")
                        TextField("请输入...",text: $username)
                            .clearButtonMode()
                           
                        
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
