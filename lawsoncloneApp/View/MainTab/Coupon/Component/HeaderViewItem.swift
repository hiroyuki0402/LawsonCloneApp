//
//  HeaderViewItem.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/29.
//

import SwiftUI

struct HeaderViewItem: View {
    // MARK: - プロパティー

    private var title: [String] = [
        "おにぎり",
        "揚げ物",
        "中華まん",
        "ベーカリー",
        "麺類",
        "その他",
        "会員限定",
        "LS100"
    ]

    var showmoreButtonBackGroundColor = #colorLiteral(red: 0.7870665356, green: 0.8987134874, blue: 0.9764705896, alpha: 1)
    var showmoreButtonBorderColor = #colorLiteral(red: 0.3331833587, green: 0.5659576486, blue: 0.9764705896, alpha: 1)


    // MARK: - ボディー

    var body: some View {
        VStack {
            StatusTabView()
                .padding(.bottom, 10)

            HStack {

                shoreMoreButton

                ScrollView(.horizontal, showsIndicators: false) {
                    genreButton
                        .padding(.trailing, 10)
                }

            }
            .padding(.leading, 10)
        }
    }//: ボディー
}

private extension HeaderViewItem {
    /// すべて見るボタン
    private var shoreMoreButton: some View {
        HStack {
            Text("すべて")
                .frame(width: 60)
                .padding(.vertical, 4)
                .padding(.horizontal, 4)
                .background(Color(showmoreButtonBackGroundColor))
                .clipShape(Capsule())
                .overlay(
                    Capsule()
                        .stroke(Color(showmoreButtonBorderColor), lineWidth: 2)
            )

            Divider()
                .frame(width: 2, height: 20)
                .background(Color.gray)
        }
    }

    /// ジャンル
    private var genreButton: some View {
        HStack {
            ForEach(title, id: \.self) { item in
                Button {

                } label: {
                    Text(item)
                        .foregroundStyle(Color(uiColor: .darkGray))
                        .fontWeight(.light)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 2)
                        .background(         
                            Capsule()
                                .fill(.white)
                                .stroke(.gray, lineWidth: 2))
                        .clipShape(.capsule)
                }
            }
        }

    }
}

#Preview {
    HeaderViewItem()
        .background(Color(.systemBackground))
}
