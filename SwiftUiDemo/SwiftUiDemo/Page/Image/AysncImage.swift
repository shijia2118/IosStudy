//
//  AysncImage.swift
//  SwiftUiDemo
//
//  Created by jia shi on 2023/1/28.
//

import SwiftUI

struct AysncImage: View {
    let url : String = "https://hbimg.b0.upaiyun.com/7c8d039c5767d71fb3ee9bca9b61646dc71cda201e01-6YE4NV_fw658"
    var body: some View {
        AsyncImage(url: URL(string: url), transaction: Transaction(animation: .spring())) { phase in
            switch phase {
            case .empty:
                Color.purple.opacity(0.1)

            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()
                    .transition(.slide)
                

            case .failure(_):
                Image(systemName: "exclamationmark.icloud")
                    .resizable()
                    .scaledToFit()

            @unknown default:
                Image(systemName: "exclamationmark.icloud")
            }
        }
        .frame(width: 300, height: 500)
        .cornerRadius(20)
    }
}

struct AysncImage_Previews: PreviewProvider {
    static var previews: some View {
        AysncImage()
    }
}
