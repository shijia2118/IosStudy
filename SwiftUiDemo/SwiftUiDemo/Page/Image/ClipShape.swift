//
//  ClipShape.swift
//  SwiftUiDemo
//
//  Created by UI Seeyou on 2023/1/18.
//

import SwiftUI

struct ClipShape: View {
    var body: some View {
        Image("Image").clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}

struct ClipShape_Previews: PreviewProvider {
    static var previews: some View {
        ClipShape()
    }
}
