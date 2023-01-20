//
//  AspectRatio.swift
//  SwiftUiDemo
//
//  Created by UI Seeyou on 2023/1/18.
//

import SwiftUI

struct AspectRatio: View {
    var body: some View {
        Image("Image").resizable().aspectRatio(contentMode: .fit)
    }
}

struct AspectRatio_Previews: PreviewProvider {
    static var previews: some View {
        AspectRatio()
    }
}
