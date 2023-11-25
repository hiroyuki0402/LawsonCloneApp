//
//  CoiponView.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/25.
//

import SwiftUI

struct CoiponView: View {
    var body: some View {
        VStack {
            ContentsHeader(title: "すぐに使えるクーポン", isHide: true)
            CouponItem()
        }
    }
}

#Preview {
    CoiponView()
}
