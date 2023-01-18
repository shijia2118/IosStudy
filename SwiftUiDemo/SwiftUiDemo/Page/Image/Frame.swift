//
//  Frame.swift
//  SwiftUiDemo
//
//  Created by UI Seeyou on 2023/1/18.
//

import SwiftUI

struct Frame: View {
    var body: some View {
        Image("Image")
            .resizable()
            .frame(width:200,height: 200)
    }
}

struct Frame_Previews: PreviewProvider {
    static var previews: some View {
        Frame()
    }
}
