//
//  CampaingnView.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/25.
//

import SwiftUI

struct HomeCampaingnView: View {
    // MARK: - プロパティー

    // MARK: - ボディー

    var body: some View {
        VStack {
            /// ヘッダー
            ContentsHeader(title: "アプリで参加できるキャンペーン", isHide: true)

            /// コンテンツ
            ScrollView(.horizontal) {
                HStack {
                    ForEach(TestData.shared.campaignItems, id: \.self) { item in
                        CampaingnViewItem(imageName: item)
                    }//: ForEach

                }//: HStack
                .padding(.trailing, 20)

            }//: ScrollView

        }//: VStack

    }//: ボディー
}

#Preview {
    HomeCampaingnView()
}
