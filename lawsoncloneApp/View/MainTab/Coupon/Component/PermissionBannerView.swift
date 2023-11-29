//
//  PermissionBannerView.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/29.
//

import SwiftUI

struct PermissionBannerView: View {
    // MARK: - プロパティー

    // MARK: - ボディー

    var body: some View {
            HStack(spacing: 0) {
                Image(systemName: "info.circle")
                    .foregroundStyle(.navigationBar)
                    .font(.title2)

                Text("タップして「トラッキングを許可」をオンにすると、興味のある商品のクーポンやお知らせが届きます")
                    .padding()
                    .font(.caption)
                    .fontWeight(.light)
                    .fontDesign(.rounded)

                Image(systemName: "xmark.circle.fill")
                    .foregroundStyle(.gray)

            }
            .background(.white)
            .frame(maxWidth: .infinity)
            .padding(.bottom)
    }//: ボディー
}

#Preview {
    PermissionBannerView()
        .background(Color.black)

}
