//
//  lowsonAppdescription.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/25.
//

import SwiftUI

struct LowsonAppdescription: View {
    // MARK: - プロパティー

    // MARK: - ボディー
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("ローソンアプリのログインについて")
                Text("2023/11/20(月)")
                    .foregroundColor(.gray)
            }
            .font(.footnote)
            .padding(5)

            Spacer()
            Button {

            } label: {
                Text("詳細")
                    .font(.system(size: 17))
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
            }
            .padding(.horizontal)
        }
        .background(Rectangle().stroke(.gray, lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/))
        .padding(5)
    }//:     // MARK: - ボディー
}

#Preview {
    LowsonAppdescription()
}
