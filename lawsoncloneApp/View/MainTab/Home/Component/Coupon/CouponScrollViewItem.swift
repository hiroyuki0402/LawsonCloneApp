//
//  CouponScrollViewItem.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/25.
//

import SwiftUI

struct CouponScrollViewItem: View {
    var imageName: String

    var body: some View {
        VStack {
            Image(imageName)
                .padding(.horizontal, 20)
                .padding(.top, 10)
            HStack {
                Text("あと2日")
                    .foregroundColor(.red)
                    .padding(2)
                    .font(.caption)
                    .background(Color(uiColor: .systemGray5))
                .clipShape(.capsule)
                Spacer()
            }
            Text("【100円引】昼食時間帯におにぎりの購入を促すための割引です。2個目を半額にすることで、複数購入を促します。")
                .lineLimit(2)

            Line()
                .stroke(style: .init(dash: [4, 3]))
                .foregroundColor(.black)
                .frame(height: 0.5)
                .padding(.horizontal, 1)

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
        .padding(.horizontal, 8)
        .background(.white)
        .frame(width: 160)
        .cornerRadius(10)
    }
}

#Preview {
    CouponScrollViewItem(imageName: "coupon2")
        .background(Color.gray)
}
