//
//  CampaingnViewItem.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/25.
//

import SwiftUI

struct CampaingnViewItem: View {
    // MARK: - プロパティー

    /// 画像名前
    var imageName: String

    /// 応募が終了かのフラグ
    var isEnd: Bool = false

    // MARK: - ボディー

    var body: some View {
        VStack {
            /// 画像
            contentsImage

            /// 説明文
            contentsDescripsion

            /// 応募ステータス
            if !isEnd {
                contentsEnd
            }
        }//: VStack
        .frame(width: 150, height: 170)

    }//: ボディー
}

// MARK: - CampaingnViewItemアイテム

private extension CampaingnViewItem {
    /// コンテンツの画像
    private var contentsImage: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 100)
    }

    /// 説明
    private var contentsDescripsion: some View {
        Text("韓国フェア アプリくじジャンボ")
            .lineLimit(2)
            .font(.footnote)
    }

    /// 応募ステータス
    private var contentsEnd: some View {
        HStack {
            Text("応募終了")
                .foregroundColor(.white)
                .padding(3)
                .fontWeight(.semibold)
                .font(.caption)
                .background(Color(uiColor: .systemGray5))
            .clipShape(.capsule)
            Spacer()
        }
    }
}

#Preview {
    CampaingnViewItem(imageName: "campaign2")
        .background(Color.blue)
}
