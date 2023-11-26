//
//  OsechiView.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/25.
//

import SwiftUI

struct OsechiView: View {
    // MARK: - プロパティー

    // MARK: - ボディー

    var body: some View {
            VStack {
                /// ヘッダー
                ContentsHeader(title: "おせち2023")

                /// コンテンツ
                OsechiItem()

                /// 注意書き
                Text("※店舗によって取り扱いがない商品がございます。必ず商品の詳細をご確認ください。")
                    .font(.footnote)
                    .padding(.trailing, 20)
                    .foregroundColor(.gray)
            }//: VStack

        }//:　ボディー
    }

#Preview {
    OsechiView()
}
