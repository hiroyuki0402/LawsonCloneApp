//
//  CampaingnView.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/25.
//

import SwiftUI

struct CampaingnView: View {
    var body: some View {
        VStack {
            ContentsHeader(title: "アプリで参加できるキャンペーン", isHide: true)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(TestData.shared.campaignItems, id: \.self) { item in
                        CampaingnViewItem(imageName: item)
                    }
                }
                .padding(.trailing, 20)
            }
        }
    }
}

#Preview {
    CampaingnView()
}
