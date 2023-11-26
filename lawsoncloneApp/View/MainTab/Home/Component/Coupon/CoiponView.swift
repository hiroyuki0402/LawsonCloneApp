//
//  CoiponView.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/25.
//

import SwiftUI

struct CoiponView: View {
    // MARK: - プロパティー

    // MARK: - ボディー

    var body: some View {
        VStack {
            /// ヘッダー
            ContentsHeader(title: "すぐに使えるクーポン", isHide: true)

            /// コンテンツ
            CouponItem()

        }//: VStack

    }//: ボディー
}

#Preview {
    CoiponView()
}
