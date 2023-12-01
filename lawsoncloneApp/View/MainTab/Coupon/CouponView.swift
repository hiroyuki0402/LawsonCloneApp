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
    @State private var bannerPosition: CGFloat = .infinity
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
    }

    // MARK: - ボディー

    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack {
                    GeometryReader { geometry in
                        PermissionBannerView()
                            .frame(height: 85) // 高さは適宜調整
                            .background(GeometryReader {
                                Color.clear.preference(key: ViewOffsetKey.self, value: -$0.frame(in: .global).minY)
                            })
                    }
                    .frame(height: 85) // GeometryReaderの高さ

                    // HeaderViewは常に表示
                    HeaderView()
                        .padding(.leading, 10)

                    ForEach(TestData.shared.couponItems, id: \.self) { item in
                        CouponItemView(image: item)
                            .shadow(radius: 3, x: 1, y:1)
                            .padding(.horizontal)
                            .padding(.top, 10)
                    }
                }
            }
            .background(
                GeometryReader { _ in
                    Color.clear
                }
            )
            .onPreferenceChange(ViewOffsetKey.self) { value in
                bannerPosition = value
            }
            .background(Color(.systemGray6))
            .overlay(
                VStack {
                    if bannerPosition < 0 {
                        HeaderView()
                            .padding(.leading, 10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.white)
                            .transition(.move(edge: .top))
                    }
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            )
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

struct ViewOffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
