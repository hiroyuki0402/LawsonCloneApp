//
//  ReservationItem.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/25.
//

import SwiftUI

struct ReservationItem: View {
    // MARK: - プロパティー

    // MARK: - ボディー

    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(TestData.shared.reservation, id: \.self) { item in
                        HStack {
                            Image(item)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 160, height: 100)

                        }
                        .padding(.vertical, 4)
                        .background(Rectangle().stroke(.gray, lineWidth: 0.5))

                    }//: ループ

                }//: HStack
                .padding(.trailing, 20)

            }//: ScrollView

        }//: VStack

    }//: ボディー
}

#Preview {
    ReservationItem()
}
