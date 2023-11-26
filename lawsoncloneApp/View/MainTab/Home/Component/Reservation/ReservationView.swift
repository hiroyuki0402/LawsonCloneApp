//
//  Reservation.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/25.
//

import SwiftUI

struct ReservationView: View {
    // MARK: - プロパティー

    // MARK: - ボディー

    var body: some View {
        VStack {
            /// ヘッダー
            ContentsHeader(title: "ローソン予約アプリ")

            /// コンテンツ
            ReservationItem()
        }
    }//: ボディー
}

#Preview {
    ReservationView()
}
