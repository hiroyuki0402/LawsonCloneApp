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
    }

    // MARK: - ボディー

    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack {
                    PermissionBannerView()
                    

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

