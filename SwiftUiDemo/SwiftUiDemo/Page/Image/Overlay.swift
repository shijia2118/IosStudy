//
//  Overlay.swift
//  SwiftUiDemo
//
//  Created by UI Seeyou on 2023/1/18.
//

import SwiftUI

struct Overlay: View {
    var body: some View {
        Image("Image")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Text("头像").foregroundColor(.white).font(.largeTitle))
        
    }
}

struct Overlay_Previews: PreviewProvider {
    static var previews: some View {
        Overlay()
    }
}
