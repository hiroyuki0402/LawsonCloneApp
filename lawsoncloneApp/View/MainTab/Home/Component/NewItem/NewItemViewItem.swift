//
//  NewItemViewItem.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/25.
//

import SwiftUI

struct NewItemViewItem: View {
    var image: String
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 70)

            VStack(alignment: .leading) {
                Text("スイーツスイーツスイーツ")
                    .lineLimit(2)
                    .font(.footnote)

                Text("188円(税込)")
                    .lineLimit(2)
                    .foregroundColor(.gray)
                    .font(.footnote)

                Text("2023/11/21(火)発売")
                    .foregroundColor(.navigationBar)
                    .font(.system(size: 13))
            }
            .frame(width: 120)
        }
        .padding(.trailing, 20)
    }
}

#Preview {
    NewItemViewItem(image: "newItem")
}
