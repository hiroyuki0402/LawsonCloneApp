//
//  HeaderView.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/29.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - プロパティー
    @Binding var selectedGenre: GenreItem

    // MARK: - ボディー
    var body: some View {
        VStack {
            HeaderViewItem(couponGenre: $selectedGenre)
                .frame(maxWidth: .infinity)
                .padding(.bottom, 10)
        }
        .background(Color(.systemGray6))
        
    }//: プロパティー
}

#Preview {
    HeaderView(selectedGenre: .constant(.all))
}
