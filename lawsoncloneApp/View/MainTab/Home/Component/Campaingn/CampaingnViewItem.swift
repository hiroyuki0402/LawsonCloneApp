//
//  CampaingnViewItem.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/25.
//

import SwiftUI

struct CampaingnViewItem: View {
    var imageName: String
    var isEnd: Bool = false

    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 100)
            Text("韓国フェア アプリくじジャンボ")
                .lineLimit(2)
                .font(.footnote)
            if !isEnd {
                HStack {
                    Text("応募終了")
                        .foregroundColor(.white)
                        .padding(3)
                        .fontWeight(.semibold)
                        .font(.caption)
                        .background(Color(uiColor: .systemGray5))
                    .clipShape(.capsule)
                    Spacer()
                }
            }
        }
        .frame(width: 150, height: 170)
    }
}

#Preview {
    CampaingnViewItem(imageName: "campaign2")
        .background(Color.blue)
}
