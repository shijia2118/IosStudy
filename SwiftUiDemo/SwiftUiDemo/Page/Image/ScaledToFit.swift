//
//  ScaledToFit.swift
//  SwiftUiDemo
//
//  Created by UI Seeyou on 2023/1/18.
//

import SwiftUI

struct ScaledToFit: View {
    var body: some View {
        Image("Image")
            .resizable()
            .scaledToFit()
    }
}

struct ScaledToFit_Previews: PreviewProvider {
    static var previews: some View {
        ScaledToFit()
    }
}
