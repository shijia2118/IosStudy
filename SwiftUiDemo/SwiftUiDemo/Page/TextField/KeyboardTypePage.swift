//
//  KeyboardTypePage.swift
//  SwiftUiDemo
//
//  Created by UI Seeyou on 2023/1/16.
//

import SwiftUI

struct KeyboardTypePage: View {
    @State private var username:String = ""
    var body: some View {
        List{
            Group{
                Section(header:Text("默认")){
                    TextField("请输入...",text:$username).keyboardType(/*@START_MENU_TOKEN@*/.default/*@END_MENU_TOKEN@*/)
                }
                Section(header:Text("URL(网络地址)")){
                    TextField("请输入...",text:$username).keyboardType(.URL)
                }
                Section(header:Text("asciiCapable(支持输入ASCII字符)")){
                    TextField("请输入...",text:$username).keyboardType(.asciiCapable)
                }
                Section(header:Text("asciiCapableNumberPad(支持输入ASCII数字)")){
                    TextField("请输入...",text:$username).keyboardType(.asciiCapableNumberPad)
                }
                Section(header:Text("numberPad(支持输入0～9数字)")){
                    TextField("请输入...",text:$username).keyboardType(.numberPad)
                }
                Section(header:Text("decimalPad(支持输入数字和小数)")){
                    TextField("请输入...",text:$username).keyboardType(.decimalPad)
                }
            }
            Section(header:Text("emailAddress(邮箱地址)")){
                TextField("请输入...",text:$username).keyboardType(.emailAddress)
            }
            Section(header:Text("namePhonePad(支持输入名称和手机)")){
                TextField("请输入...",text:$username).keyboardType(.namePhonePad)
            }
            Section(header:Text("numbersAndPunctuation(支持输入标点和数字)")){
                TextField("请输入...",text:$username).keyboardType(.numbersAndPunctuation)
            }
            Section(header:Text("phonePad(支持输入手机号)")){
                TextField("请输入...",text:$username).keyboardType(.phonePad)
            }
            Section(header:Text("twitter(支持输入Twitter文本)")){
                TextField("请输入...",text:$username).keyboardType(.twitter)
            }
            Section(header:Text("webSearch()")){
                TextField("请输入...",text:$username).keyboardType(.webSearch)
            }
           
        }
    }
}

struct KeyboardTypePage_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardTypePage()
    }
}
