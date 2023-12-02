//
//  StatusTabView.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/30.
//

import SwiftUI

enum TabItem: Int, CaseIterable, Identifiable {
    case now, trial

    var id: Int {
        return self.rawValue
    }

    func getTitle() -> String {
        switch self {
        case .now:
            return "すぐに使えるクーポン"

        case .trial:
            return "お試し引き換券"
        }
    }
}

struct StatusTabView: View {
    // MARK: - プロパティー
    @State private var selectedTab: TabItem = .now

    // MARK: Threadタブ
    /// スレッドタブの幅
    @State private var tabWidths: [TabItem: CGFloat] = [:]



    // MARK: - ボディー

    var body: some View {

        HStack {
            ForEach(TabItem.allCases) { item in
                VStack {
                    Text(item.getTitle())
                        .foregroundStyle(.black)
                        .padding(.horizontal, 5)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .modifier(WidthSetterModifier(width: Binding(
                            get: { self.tabWidths[item, default: 0] },
                            set: { self.tabWidths[item] = $0 }
                        )))


                    if selectedTab == item {
                        Rectangle()
                            .foregroundStyle(Color.blue)
                            .frame(width: self.tabWidths[item, default: 0], height: 2)

                    } else {
                        Rectangle()
                            .foregroundStyle(Color.clear)
                            .frame(width: self.tabWidths[item, default: 0], height: 2)
                    }
                }
                .padding(.leading, 10)
                .padding(.top, 10)
                .onTapGesture {
                    withAnimation {
                        selectedTab = item
                    }
                }
            }

            Spacer()

        }//: HStack
    }//: ボディー
}

#Preview {
    StatusTabView()
}
