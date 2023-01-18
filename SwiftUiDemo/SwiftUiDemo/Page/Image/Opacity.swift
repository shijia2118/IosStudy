//
//  Opacity.swift
//  SwiftUiDemo
//
//  Created by UI Seeyou on 2023/1/18.
//

import SwiftUI

struct Opacity: View {
    var body: some View {
        VStack(alignment:.center){
            Image("Image")
            Text("透明度:1")
            Image("Image").opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            Text("透明度:0.8")
        }
        
    }
}

struct Opacity_Previews: PreviewProvider {
    static var previews: some View {
        Opacity()
    }
}
