//
//  TopicsView.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/24.
//

import Foundation
import SwiftUI

// TODO: タブの作成
// TODO: タブスクロール時に固定
// TODO: 画面遷移
// TODO: 全体的に微調整

struct TopicsView: View {
    // MARK: - プロパティー
    private var gridColumn: Double = 2.0
    private var gridLayout: [GridItem] = [GridItem(.flexible())]

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

        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }

    // MARK: - ボディー

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    /// バナー
                    headerArea

                    /// ピックアップ
                    pickupArea

                    /// お得情報
                    otokuArea

                    /// キャンペーン
                    campaignArea

                    /// 予約
                    reservationArea

                    /// サービス
                    serviceArea

                    /// ローソンからのお知らせ
                    noticeArea

                    /// 募集
                    recruitmentArea

                }//: VStack

            }//: ScrollView
            .scrollIndicators(.hidden)
            .listStyle(.plain)
            .background(Color(.systemGray6))
            .navigationTitle(NSLocalizedString("TopicsNaigationTitle", comment: ""))
            .navigationBarTitleDisplayMode(.inline)

        }//: NavigationStack

    }//: ボディー
}
// MARK: - TopicsViewアイテム

private extension TopicsView {
    /// バナー
    private var headerArea: some View {
        VStack {
            TopicksBannerItemView()
                .padding(.top, 30)

            /// タブ
            genreTabArea
                .padding(.top)
        }
        .frame(height: 140)
        .padding(.bottom)
        .background(Color.white)
    }

    /// タブ
    private var genreTabArea: some View {
        VStack(spacing: 0) {
            TopicsTabItemView()
        }
        .background(Color.white)
    }

    /// トピックスエリア
    private var pickupArea: some View {
        VStack {
            Section(header:
                        HStack(alignment: .bottom, spacing: 0) {
                Text("ピックアップ")
                    .padding(.leading)
                    .padding(.top, 20)
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
            }

            ) {
                LazyVGrid(columns: gridLayout, content: {
                    ForEach(TestData.shared.pickupsItems, id: \.self) { item in
                        TopicsItemView(image: item)
                            .padding(10)
                    }
                })
            }
        }
        .background(Color.white)
    }

    /// お得情報エリア
    private var otokuArea: some View {
        VStack {
            Section(header:
                        HStack(alignment: .bottom, spacing: 0) {
                Text("お得情報")
                    .padding(.leading)
                    .padding(.top, 20)
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
            }
            ) {
                LazyVGrid(columns: gridLayout, content: {
                    ForEach(TestData.shared.otokuItems, id: \.self) { item in
                        TopicsItemView(image: item)
                            .padding(10)
                    }
                })
            }
        }
        .background(Color.white)
        .padding(.top, 10)
    }

    /// キャンペーンエリア
    private var campaignArea: some View {
        VStack {
            Section(header:
                        HStack(alignment: .bottom, spacing: 0) {
                Text("キャンペーン")
                    .padding(.leading)
                    .padding(.top, 20)
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
            }
            ) {
                LazyVGrid(columns: gridLayout, content: {
                    ForEach(TestData.shared.campaignItems, id: \.self) { item in
                        TopicsItemView(image: item)
                            .padding(10)
                    }
                })
            }
        }
        .background(Color.white)
        .padding(.top, 10)
    }

    /// 予約エリア
    private var reservationArea: some View {
        VStack {
            Section(header:
                        HStack(alignment: .bottom, spacing: 0) {
                Text("予約")
                    .padding(.leading)
                    .padding(.top, 20)
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
            }
            ) {
                LazyVGrid(columns: gridLayout, content: {
                    ForEach(TestData.shared.reservation, id: \.self) { item in
                        TopicsItemView(image: item)
                            .padding(10)
                    }
                })
            }
        }
        .background(Color.white)
        .padding(.top, 10)
    }

    /// サービスエリア
    private var serviceArea: some View {
        VStack {
            Section(header:
                        HStack(alignment: .bottom, spacing: 0) {
                Text("サービス")
                    .padding(.leading)
                    .padding(.top, 20)
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
            }
            ) {
                LazyVGrid(columns: gridLayout, content: {
                    ForEach(TestData.shared.serviceItems, id: \.self) { item in
                        TopicsItemView(image: item)
                            .padding(10)
                    }
                })
            }
        }
        .background(Color.white)
        .padding(.top, 10)
    }

    /// お知らせエリア
    private var noticeArea: some View {
        VStack {
            Section(header:
                        HStack(alignment: .bottom, spacing: 0) {
                Text("ローソンからのお知らせ")
                    .padding(.leading)
                    .padding(.top, 20)
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
            }
            ) {
                LazyVGrid(columns: gridLayout, content: {
                    ForEach(TestData.shared.noticeItems, id: \.self) { item in
                        TopicsItemView(image: item)
                            .padding(10)
                    }
                })
            }
        }
        .background(Color.white)
        .padding(.top, 10)
    }

    /// 募集エリア
    private var recruitmentArea: some View {
        VStack {
            Section(header:
                        HStack(alignment: .bottom, spacing: 0) {
                Text("募集")
                    .padding(.leading)
                    .padding(.top, 20)
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
            }
            ) {
                LazyVGrid(columns: gridLayout, content: {
                    ForEach(TestData.shared.partTimeItems, id: \.self) { item in
                        TopicsItemView(image: item)
                            .padding(10)
                    }
                })
            }
        }
        .background(Color.white)
        .padding(.top, 10)
    }
}

#Preview {
    TopicsView()
}
