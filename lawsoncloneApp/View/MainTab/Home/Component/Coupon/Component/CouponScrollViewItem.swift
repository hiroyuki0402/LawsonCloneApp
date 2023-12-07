//
//  CouponScrollViewItem.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/25.
//

import SwiftUI

struct CouponScrollViewItem: View {
    // MARK: - プロパティー
    var couponData: CouponData

    // MARK: - ボディー

    var body: some View {
        VStack(spacing: 0) {
            /// クーポン画像
            couponImageItem


            /// あと何日
            deadline
                .padding(.top, 8)
                .padding(.leading, 4)

            /// クーポン説明
            couponDescription
                .padding(.horizontal, 6)
                .padding(.top, 2)


            /// 区切り線
            divider
                .padding(.horizontal, 15)

            /// 割引金額
            discount
                .padding([.bottom, .top], 15)

        }//: VStack
        .frame(width: 200, height: 270)
        .background(.white)
        .cornerRadius(10)
    }//: ボディー

    // MARK: メソッド

    enum DateStatus { case none, end, new}
    private func setStatusText() -> (text: String, type: DateStatus) {
        /// リリース日から2日以内かどうかを判断
        if DateFormatter.isWithinDays(from: couponData.releaseDate, format: .yyyyMMdd, days: 2) {
            return ("New", .new)
        }
        /// 終了日の3日以内かどうかを判断し、残り日数を表示
        else if let daysRemaining = DateFormatter.isWithinDaysToEndDate(from: couponData.endDate, format: .yyyyMMdd, days: 3).1 {
            return ("あと\(daysRemaining)日", .end)
        }
        return ("", .none)
    }
}

// MARK: - CouponScrollViewItemアイテム

private extension CouponScrollViewItem {

    /// クーポン画像
    private var couponImageItem: some View {
        Image(couponData.image)
            .resizable()
            .frame(height: 130)
            .padding(.top, 5)
            .padding(.horizontal, 4)
    }

    /// 期限日までの残数
    private var deadline: some View {
        HStack {
            Text(setStatusText().text)
                .foregroundColor(setStatusText().type == .end ? .red: .white)
                .padding(2)
                .font(.caption)
                .background(Color(uiColor: setStatusText().type == .end ? .systemGray5: .systemPink))
                .opacity(setStatusText().text.isEmpty ? 0: 1)
                .clipShape(.capsule)
            Spacer()
        }
    }

    /// クーポン説明
    private var couponDescription: some View {
        HStack {
            Text(couponData.title)
                .lineLimit(2)
                .padding(.bottom, 10)
                .frame(height: 60)
                .multilineTextAlignment(.leading)
            Spacer()
        }
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
            Text(couponData.discount.description)
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
    CouponScrollViewItem(couponData: CouponViewModel().getCouponData(at: 7))
        .background(Color.gray)
}
