//
//  ContentsHeader.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/25.
//

import SwiftUI

struct ContentsHeader: View {
    var title: String
    var isHide: Bool = false
    var body: some View {
        HStack(alignment: .top) {
            HStack(alignment: .top) {
                if !isHide {
                    addDivider(color: .navigationBar, width: 1.5, height: 50)
                }

                Text(title)
                    .font(.title3)
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
            }

            Spacer()

            Button {

            } label: {
                Text("すべて見る")
                    .font(.system(size: 17))
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
                    .padding(.trailing, 15)
            }
        }
    }
}

#Preview {
    ContentsHeader(title: "テスト")
        .padding()
}
