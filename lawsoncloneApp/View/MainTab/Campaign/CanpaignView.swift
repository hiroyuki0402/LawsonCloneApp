//
//  CanpaignView.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/24.
//

import Foundation
import SwiftUI

struct CanpaignView: View {
    // MARK: - プロパティー
    // MARK: - ボディー
    // MARK: - メソッド


    var body: some View {
        NavigationStack {

            VStack {
                ScrollView {
                    VStack(spacing: 0) {
                        PermissionBannerView()
                            .padding(.bottom, 20)
                        Section(
                            header: HStack {
                                Text("キャンペーン")
                                    .font(.footnote)
                                    .padding(5)
                                Spacer()
                            },
                            footer: HStack {
                                Button {

                                } label: {
                                    HStack {
                                        Text("すべて見る")
                                    }
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 60)
                                    .background(.white)


                                }
                            }
                        ) {
                            ForEach(0 ..< 3) {_ in
                                CampaignListRowItem()
                                Divider()

                            }

                        }
                        

                        Section(
                            header: HStack {
                                Text("キャンペーン")
                                    .font(.footnote)
                                    .padding(.top, 20)
                                Spacer()
                            }
                                .padding(),
                            footer: HStack {
                                Button {

                                } label: {
                                    HStack {
                                        Text("すべて見る")
                                    }
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 60)
                                    .background(.white)


                                }
                            }
                        ) {
                            ForEach(0 ..< 3) {_ in
                                CampaignListRowItem()
                                Divider()

                            }

                        }
                        .listStyle(.plain)
                    }
                }
            }
            .background(Color(.systemGray6))
        }

    }
}

#Preview {
    CanpaignView()
}
