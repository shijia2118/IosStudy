//
//  ContentView.swift
//  SwiftUiDemo
//
//  Created by UI Seeyou on 2022/12/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            List{
                Section(header:Text("基础控件")){
                    NavigationLink(destination: TextPage()){
                        PageRow(title: "Text", subTitle:"显示一行或多行只读文本" )
                    }
                    NavigationLink(destination: TextFieldPage()){
                        PageRow(title: "TextField", subTitle:"显示可编辑文本界面的输入控件" )
                    }
                    NavigationLink(destination: ImagePage()){
                        PageRow(title: "Image", subTitle:"显示图像控件" )
                    }
                    NavigationLink(destination: ButtonPage()){
                        PageRow(title: "Button", subTitle:"各类按钮" )
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("SwiftUI"), displayMode: .large)
        }
        
 
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone SE (2nd generation)")
    }
}
