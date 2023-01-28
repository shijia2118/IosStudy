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
    @State private var onChangeText = ""
    @State private var onSubmit = ""


    
    var body: some View {
        List{
            
            Group{
                Section(header:Text("键盘样式").bold()){
                    NavigationLink(
                        destination: KeyboardTypePage(),
                        label: {
                           Text("点击查看键盘样式详情")
                        })
                    
                }
                Section(header:Text("IOS4种展现样式").bold()){
                    VStack(alignment: .leading){
                        Text("默认样式")
                        TextField("请输入...",text: $username)
                            .textFieldStyle(DefaultTextFieldStyle())
                        Text("圆角边框")
                        TextField("请输入...",text: $username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Text("下划线(custom)")
                        TextField("请输入...",text: $username)
                            .textFieldStyle(UnderlineTextFieldStyle())
                        Text("多行文本(IOS16)")
//                        if #available(iOS 16, *) {
//                            TextField("请输入...",text:$username,axis:.vertical)
//                        }
                    }
                }
                
                Section(header:Text("内置方法").bold()){
                    VStack(alignment: .leading){
                        /// 输入框内容改变时的回调
                        Text("onChange:"+onChangeText)
                        TextField("请输入...",text: $username)
                            .onChange(of: username, perform: { value in
                                onChangeText = username
                            })
                        /// 输入框聚焦或失焦时的回调
                        Text("是否聚焦:"+String(isEditing))
                        TextField("请输入...",text:$username){ isEditing in
                            self.isEditing = isEditing
                        }
                        /// 提交内容
                        Text("onSubmit:"+onSubmit)
//                        TextField("请输入...",text:$username)
//                            .onSubmit({
//                                onSubmit = username
//                            })
                    }
                }
                
                
                
                Section(header:Text("常规属性").bold()){
                    VStack(alignment: .leading){
                        Group{
                            Text("字体大小(.font)")
                            TextField("请输入...",text: $username)
                                .font(.system(size: 20))
                            Text("文本外边距(.padding)")
                            TextField("请输入...",text: $username)
                                .padding(15)
                            Text("背景色")
                            TextField("请输入...",text: $username)
                                .background(Color.yellow)
                            Text("字体颜色")
                            TextField("请输入...",text: $username)
                                .foregroundColor(.red)
                            Text("光标颜色")
                            TextField("请输入...",text: $username)
                                .accentColor(.red)
                        }
                        Group{
                            Text("输入框尺寸")
                            TextField("请输入...",text: $username)
                                .frame(width:100, height:50)
                            Text("对齐方式")
                            TextField("请输入...",text: $username)
                                .multilineTextAlignment(.leading)
                            //自动大小写:
                            //.none 不转换
                            //.words 每个单词首字母均大写
                            //.sentences 句子首字母大写
                            //.allCharacters 每个字母均大写
                            Text("自动大小写")
                            TextField("请输入...",text: $username)
                                .autocapitalization(.allCharacters)
                            Text("行间距")
                            TextField("请输入...",text: $username)
                                .lineSpacing(10)
                            Text("字体大小写")
                            TextField("请输入...",text: $username)
                                .textCase(.lowercase)
                                                           
                        }
                        Group{
                            /// 如果有prompt属性，则展示prompt内容；
                            /// 如果没有prompt属性，则展示titleKey.
                            Text("占位符")
//                            TextField("请输入...",text: $username,prompt: Text("Prompt"))
                            
                        }
                            
                        
                           
                        
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
