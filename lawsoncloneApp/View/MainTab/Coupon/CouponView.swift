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
    @State private var selectedGenre: GenreItem = .all
    @StateObject var couponViewModel = CouponViewModel()

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
                    HeaderView(selectedGenre: $selectedGenre)
                    
                }
                    .listRowInsets(EdgeInsets())
                ) {

                    // その他のリストアイテム
                    ForEach(couponViewModel.filteredItems(for: selectedGenre)) { item in
                        CouponItemView(coupondata2: item)

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

    // MARK: - メソッド

    // データをフィルタリングするメソッド
    private func filteredItems(for genre: GenreItem) -> CouponDatas {
        switch genre {
        case .all:
            return TestData.shared.couponData
        case .pan:
            return  [
                TestData.shared.couponData[1],
                TestData.shared.couponData[9],
                TestData.shared.couponData[0]
            ]
        case .bento:
            return  [TestData.shared.couponData[2]]
        case .chukaman:
            return [TestData.shared.couponData[3]]
        case .desert:
            return  [TestData.shared.couponData[4]]
        case .men:
            return  [TestData.shared.couponData[5]]
        case .others:
            return  [TestData.shared.couponData[6]]
        case .currentUser:
            return  [TestData.shared.couponData[7]]
        case .ls100:
            return  [TestData.shared.couponData[8]]
        }
    }
}

#Preview {
    CouponView()
}

