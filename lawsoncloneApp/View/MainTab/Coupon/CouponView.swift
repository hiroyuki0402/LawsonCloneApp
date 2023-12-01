//
//  CouponView.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/24.
//

import Foundation
import SwiftUI

struct CouponView: View {
    // MARK: - プロパティー


    // MARK: - 初期化

    init(){
        let appearance = UINavigationBarAppearance()
        /// ナビゲーションバーの背景色
        appearance.backgroundColor = .navigationBar

        /// タイトルの文字色
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]

        /// 設定
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance

        UIScrollView.appearance().showsVerticalScrollIndicator = false
    }

    // MARK: - ボディー

    var body: some View {
        NavigationStack {
            List {

                PermissionBannerView()
                    .listRowSeparator(.hidden)

                Section(header: ZStack(alignment: .leading) {
                    Color.clear.frame(maxWidth: .infinity)
                    HeaderView()
                    
                }
                    .listRowInsets(EdgeInsets())
                ) {

                    // その他のリストアイテム
                    ForEach(TestData.shared.couponItems, id: \.self) { item in
                        CouponItemView(image: item)

                        /// アイテム間のスペース
                            .padding(.vertical, 10)
                            .padding(.horizontal, 10)
                        /// デフォルトのインセットを取り除く
                            .listRowInsets(EdgeInsets())
                        /// リスト行の背景を透明に設定
                            .listRowBackground(Color.clear)
                    }
                }
                .listRowSeparator(.hidden)
            }
            .scrollIndicators(.hidden)
            .listStyle(.plain)
            .background(Color(.systemGray6))
            .toolbar {
                /// 設定
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "info.circle")
                        .resizable()
                        .font(.callout)
                        .padding(2)
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                }
            }
            .navigationTitle(NSLocalizedString("CouponNaigationTitle", comment: ""))
            .navigationBarTitleDisplayMode(.inline)
        }
    }//: ボディー
}

#Preview {
    CouponView()
}

