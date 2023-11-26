//
//  TestData.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/24.
//

import Foundation
import SwiftUI

class TestData{

    static let shared = TestData()
    let bannerItems = ["bannerItem", "bannerItem2", "bannerItem3", "bannerItem4", "bannerItem5", "bannerItem6"]
    let reservation = ["reservation1", "reservation2", "reservation3", "reservation4", "reservation5"]
    let osechiItems = ["Osechi", "Osechi2", "Osechi3", "Osechi4", "Osechi5"]
    let couponItems = ["coupon", "coupon2", "coupon3", "coupon4", "coupon5", "coupon6", "coupon7", "coupon8"]
    let campaignItems = ["campaign", "campaign2", "campaign3"]
    let newItems = ["newItem", "newItem2", "newItem3", "newItem4", "newItem5", "newItem6", "newItem7", "newItem8", "newItem9"]
    let othersItems: [OthersItem] = [
        .init(imageName: "storefront", title: "店舗検索"),
        .init(imageName: "smartphone", title: "スマホレジ"),
        .init(imageName: "takeoutbag.and.cup.and.straw", title: "アプリ予約"),
        .init(imageName: "dollarsign", title: "ATMなど"),
        .init(imageName: "poweroutlet.type.f.fill", title: "チャットで質問"),
        .init(imageName: "character.bubble.ar", title: "お客様の声から"),
    ]
}

struct OthersItem: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
}
