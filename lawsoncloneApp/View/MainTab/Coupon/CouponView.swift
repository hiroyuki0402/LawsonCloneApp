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
                }
            }
            .background(Color(.systemGray6))
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
        }
    }//: ボディー
}

#Preview {
    CouponView()
}

