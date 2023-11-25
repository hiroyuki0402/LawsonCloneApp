//
//  CouponItem.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/25.
//

import SwiftUI

struct CouponItem: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(TestData.shared.couponItems, id: \.self) { item in
                        HStack {
                            CouponScrollViewItem(imageName: item)
                                .shadow(radius: 2)
                                .padding(.trailing, 20)


                        }
                        .padding(.vertical, 4)
                    }
                }
            }
        }
    }
}

#Preview {
    CouponItem()
        .background(Color.gray)
}
