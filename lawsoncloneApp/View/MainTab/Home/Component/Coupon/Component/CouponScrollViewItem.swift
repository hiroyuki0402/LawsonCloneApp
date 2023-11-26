//
//  CouponScrollViewItem.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/25.
//

import SwiftUI

struct CouponScrollViewItem: View {
    // MARK: - プロパティー

    /// 画像名
    var imageName: String

    // MARK: - ボディー

    var body: some View {
        VStack {
            /// クーポン画像
            couponImageItem

            /// あと何日
            deadline

            /// クーポン説明
            couponDescription

            /// 区切り線
            divider

            /// 割引金額
            discount

        }//: VStack
        .padding(.horizontal, 8)
        .background(.white)
        .frame(width: 160)
        .cornerRadius(10)
    }//: ボディー
}

// MARK: - CouponScrollViewItemアイテム

private extension CouponScrollViewItem {

    /// クーポン画像
    private var couponImageItem: some View {
        Image(imageName)
            .padding(.horizontal, 20)
            .padding(.top, 10)
    }

    /// 期限日までの残数
    private var deadline: some View {
        HStack {
            Text("あと2日")
                .foregroundColor(.red)
                .padding(2)
                .font(.caption)
                .background(Color(uiColor: .systemGray5))
            .clipShape(.capsule)
            Spacer()
        }
    }

    /// クーポン説明
    private var couponDescription: some View {
        Text("【100円引】昼食時間帯におにぎりの購入を促すための割引です。2個目を半額にすることで、複数購入を促します。")
            .lineLimit(2)
    }

    /// 区切り線
    private var divider: some View {
        Line()
            .stroke(style: .init(dash: [4, 3]))
            .foregroundColor(.black)
            .frame(height: 0.5)
            .padding(.horizontal, 1)
    }

    /// 割引金額
    private var discount: some View {
        HStack(alignment: .bottom, spacing: 1) {
            Text("100")
                .font(.title2)
                .fontWeight(.semibold)
            Text("円引")
                .font(.footnote)
                .fontWeight(.semibold)
                .padding(.bottom, 2)
        }
    }
}

#Preview {
    CouponScrollViewItem(imageName: "coupon2")
        .background(Color.gray)
}
