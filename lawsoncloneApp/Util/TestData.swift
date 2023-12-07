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
    let otokuItems = ["otoku", "otoku2", "otoku3", "otoku4"]
    let serviceItems = ["service", "service3", "service4", "service5", "service6", "service7", "service8", "service9"]
    let partTimeItems = ["partTime", "partTime2", "partTime3"]
    let pickupsItems = ["service9", "reservation5", "campaign3", "otoku4"]
    let noticeItems = ["notice", "notice2", "notice3"]

    let couponData: CouponDatas = [
        .init(id: "coupon001", image: "coupon", releaseDate: "2023-12-01", title: "コーヒー(M)", kbn: 0, discount: 20, endDate: "2023-12-20"),
        .init(id: "coupon002", image: "coupon2", releaseDate: "2023-12-02", title: "もっちりとした白いたい焼き　カスタード", kbn: 0, discount: 20, endDate: "2023-12-20"),
        .init(id: "coupon003", image: "coupon3", releaseDate: "2023-12-03", title: "ごま油香る餃子スープ", kbn: 0, discount: 20, endDate: "2023-12-20"),
        .init(id: "coupon004", image: "coupon4", releaseDate: "2023-12-04", title: "お餅で包んだ苺ケーキ", kbn: 0, discount: 20, endDate: "2023-12-20"),
        .init(id: "coupon005", image: "coupon5", releaseDate: "2023-12-05", title: "MILK監修　とろ〜りミルクのクリームコッペ", kbn: 0, discount: 20, endDate: "2023-12-20"),
        .init(id: "coupon006", image: "coupon6", releaseDate: "2023-12-06", title: "これが炭火焼牛カルビ丼", kbn: 0, discount: 40, endDate: "2023-12-20"),
        .init(id: "coupon007", image: "coupon7", releaseDate: "2023-12-07", title: "これがロースかつ丼", kbn: 0, discount: 40, endDate: "2023-12-20"),
        .init(id: "coupon008", image: "coupon8", releaseDate: "2023-12-08", title: "からあげクン　黄金チキン風", kbn: 0, discount: 40, endDate: "2023-12-20")
    ]
}

struct OthersItem: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
}


