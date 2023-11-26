//
//  HomeView.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/24.
//

import Foundation
import SwiftUI

struct HomeView: View {
    // MARK: - プロパティー

    /// 背景色
    private let backGroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)

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

        /// スクロールビュー
        UIScrollView.appearance().bounces = false
    }

    // MARK: - ボディー

    var body: some View {

        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    /// Topバナー
                    HomeTopBannerView()
                        .padding(.bottom, 20)

                    /// キャンペーンバナー
                    BannerView()
                        .padding(.leading)

                    /// ログインに関して
                    LowsonAppdescription()
                        .padding()

                    ///  予約
                    ReservationView()
                        .padding(.leading)
                        .padding(.top)

                    /// おせち
                    OsechiView()
                        .padding(.leading)
                        .padding(.top)

                    /// クーポン
                    CoiponView()
                        .padding(.leading)
                        .padding(.top)

                    /// キャンペーン
                    HomeCampaingnView()
                        .padding(.leading)
                        .padding(.top)

                    /// 新商品
                    NewItemView()
                        .padding(.leading)
                        .padding(.top)

                    /// その他
                    OthersView()
                        .padding(.top)

                    Spacer()
                }
                .toolbar {

                    /// お知らせ
                    ToolbarItem(placement: .topBarLeading) {
                        Image(systemName: "bell")
                            .resizable()
                            .font(.callout)
                            .padding(4)
                            .frame(width: 24, height: 24)
                            .background(.white)
                            .clipShape(
                                Circle()
                            )
                            .foregroundColor(.blue)
                    }

                    /// 設定
                    ToolbarItem(placement: .topBarTrailing) {
                        Image(systemName: "gearshape")
                            .resizable()
                            .font(.callout)
                            .padding(2)
                            .frame(width: 24, height: 24)
                            .foregroundColor(.white)
                    }
                }
                .navigationTitle(NSLocalizedString("NaigationTitle", comment: ""))
                .navigationBarTitleDisplayMode(.inline)
            }//: ScrollView
            .background(Color(backGroundColor))

        }//: NavigationStack

    }//: ボディー
}

// MARK: - プレビュー

#Preview {
    HomeView()
}
