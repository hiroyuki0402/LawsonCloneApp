//
//  CouponItem.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/25.
//

import SwiftUI

struct CouponItem: View {
    // MARK: - プロパティー
    @StateObject var couponViewModel = CouponViewModel()

    // MARK: - ボディー

    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(couponViewModel.couponDatas) { item in
                        HStack {
                            CouponScrollViewItem(couponData: item)
                                .shadow(radius: 2)
                                .padding(.trailing, 20)
                        }
                        .padding(.vertical, 4)
                    }//: ループ

                }//: HStack

            }//: ScrollView

        }//: VStack

    }//: ボディー
}

#Preview {
    CouponItem()
        .background(Color.gray)
}
