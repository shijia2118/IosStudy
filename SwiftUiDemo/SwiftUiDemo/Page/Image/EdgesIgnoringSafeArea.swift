//
//  EdgesIgnoringSafeArea.swift
//  SwiftUiDemo
//
//  Created by UI Seeyou on 2023/1/18.
//

import SwiftUI

struct EdgesIgnoringSafeArea: View {
    var body: some View {
        Image("Image").resizable().edgesIgnoringSafeArea(.all)
    }
}

struct EdgesIgnoringSafeArea_Previews: PreviewProvider {
    static var previews: some View {
        EdgesIgnoringSafeArea()
    }
}
