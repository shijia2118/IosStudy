//
//  ButtonPage.swift
//  SwiftUiDemo
//
//  Created by jia shi on 2023/1/29.
//

import SwiftUI

struct ButtonPage: View {
    var body: some View {
        List{
            Section(header:Text("简单按钮").bold()){
                VStack(spacing:20){
                    /// 如果label中只有text，可以简单写成以下形式。
                    /// 注意：必须加buttonStyle属性，否则button和section有点击冲突
                    Button("Bookmark"){
                        print("这里是action1")
                    }.buttonStyle(BorderlessButtonStyle())
                    
                    /// 如果label中有image或其他内容，可以写成以下形式
                    Button(action: {
                        print("这里是action2")
                    } ){
                        HStack {
                                Image(systemName: "bookmark.fill")
                                Text("Bookmark1")
                        }
                    }.buttonStyle(BorderlessButtonStyle())
                    
                    /// 上述写法也可以如下
                    Button(action: {
                        print("action22")
                    }, label: {
                        HStack{
                            Image(systemName: "bookmark.fill")
                            Text("Bookmark2")
                            
                        }
                    }).buttonStyle(BorderlessButtonStyle())
                }
                
            }
            
            /// 带边框无背景按钮
            Section(header:Text("有边框无背景").bold()){
                Button(action: {
                    print("有边框无背景")
                }, label: {
                    HStack{
                        Image(systemName: "bookmark.fill")
                        Text("Bookmark")
                    }.padding()
                        .overlay(RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth: 2.0))
                }).buttonStyle(BorderlessButtonStyle())
            }
            
            /// 无边框有背景按钮
            Section(header:Text("无边框有背景").bold()){
                Button(action: {
                    print("无边框有背景")
                }, label: {
                    HStack{
                        Image(systemName: "bookmark.fill")
                        Text("Bookmark")
                    }.padding()
                        .background(Color.yellow).cornerRadius(20)
                }).buttonStyle(BorderlessButtonStyle())
            }
        }
    }
}

struct ButtonPage_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPage()
    }
}
