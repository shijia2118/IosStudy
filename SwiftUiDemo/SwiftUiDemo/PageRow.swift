//
//  PageRow.swift
//  SwiftUiDemo
//
//  Created by UI Seeyou on 2023/1/5.
//

import SwiftUI

struct PageRow: View {
    private var title:String
    private var subTitle:String?
    
    init(title:String,subTitle:String?) {
        self.title = title
        self.subTitle = subTitle
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Text(title).bold()
            if(subTitle != nil){
                Text(subTitle!).font(.subheadline).opacity(0.5)
            }
        }
    }
}

struct PageRow_Previews: PreviewProvider {
    static var previews: some View {
        PageRow(title: "测试数据",subTitle: nil)
    }
}
