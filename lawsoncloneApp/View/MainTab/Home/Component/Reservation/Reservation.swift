//
//  Reservation.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/25.
//

import SwiftUI

struct Reservation: View {
    var body: some View {
        VStack {
            ContentsHeader(title: "ローソン予約アプリ")
            ReservationItem()
        }
    }
}

#Preview {
    Reservation()
}
