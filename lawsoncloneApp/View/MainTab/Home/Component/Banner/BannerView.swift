//
//  BannerView.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/25.
//

import SwiftUI

struct BannerView: View {
    var body: some View {
        VStack {
            ZStack {
                ZStack {
                    HStack(alignment: .top, spacing: 0) {
                        NavigationBackGround()
                            .fill(.navigationBar)
                            .frame(maxWidth: .infinity)
                            .frame(height: 15)

                    }
                }
                Image(.homeBanner)
                    .scaledToFit()
                    .padding(.top, 40)

            }
            Spacer()
        }
        .frame(height: 80)
    }
}

#Preview {
    BannerView()
        .background(.black)
}
