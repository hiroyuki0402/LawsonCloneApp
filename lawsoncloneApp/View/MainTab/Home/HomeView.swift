//
//  HomeView.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/24.
//

import Foundation
import SwiftUI

struct HomeView: View {
    init(){
        let appearance = UINavigationBarAppearance()
        /// ナビゲーションバーの背景色
        appearance.backgroundColor = .navigationBar

        /// タイトルの文字色
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]

        /// 設定
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance

        /// スクロールビュー
        UIScrollView.appearance().bounces = false
    }

    var body: some View {
        let backGroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)

        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {

                    BannerView()
                        .padding(.bottom, 20)


                    BannerItem()
                        .padding(.leading)

                    LowsonAppdescription()
                        .padding()

                    Reservation()
                        .padding(.leading)
                        .padding(.top)

                    OsechiView()
                        .padding(.leading)
                        .padding(.top)

                    CoiponView()
                        .padding(.leading)
                        .padding(.top)

                    CampaingnView()
                        .padding(.leading)
                        .padding(.top)
                    
                    NewItemView()
                        .padding(.leading)
                        .padding(.top)

                    Spacer()
                }
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Image(systemName: "bell")
                            .resizable()
                            .font(.callout)
                            .padding(4)
                            .frame(width: 24, height: 24)
                            .background(.white)
                            .clipShape(
                                Circle()
                            )
                            .foregroundColor(.blue)
                    }

                    ToolbarItem(placement: .topBarTrailing) {
                        Image(systemName: "gearshape")
                            .resizable()
                            .font(.callout)
                            .padding(2)
                            .frame(width: 24, height: 24)
                            .foregroundColor(.white)
                    }
                }
                .navigationTitle("lawson".uppercased())
                .navigationBarTitleDisplayMode(.inline)
            }
            .background(Color(backGroundColor))

        }

    }
}

#Preview {
    HomeView()
}
