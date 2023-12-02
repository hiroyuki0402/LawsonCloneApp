//
//  CampaignListRowItem.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/12/02.
//

import SwiftUI

struct CampaignListRowItem: View {
    // MARK: - プロパティー

    // MARK: - ボディー

    var body: some View {
        VStack {
            HStack {
                Image(.campaign)
                    .resizable()
                    .frame(width: 100, height: 60)

                VStack {
                    HStack {
                        Text("未エントリー")
                                .foregroundColor(.blue)
                                .padding(3)
                                .padding(.horizontal, 5)
                                .fontWeight(.semibold)
                                .font(.caption)
                                .background(Color(uiColor: .systemGray6))
                                .cornerRadius(5)
                        Spacer()
                    }
                    .padding(.leading, 5)

                    HStack {
                        Text("対象のお酒を買うと1本無料クーポンが当たる")
                        Spacer()
                    }
                    .padding(.leading, 5)
                    .font(.title3)

                    HStack {
                        Text("期間")
                            .foregroundStyle(.blue)
                        Text("2023/11/28(火)〜2023/12/11(月)")
                        Spacer()
                    }
                    .padding(.leading, 5)
                    .font(.footnote)
                }
            }
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 8)
        .background(.white)
    }//: ボディー
}

#Preview {
    CampaignListRowItem()
}
