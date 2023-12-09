//
//  CouponData.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/12/07.
//

import Foundation

struct CouponData: Identifiable, Codable {
    let id: String
    let image: String
    let releaseDate: String
    let title: String
    let kbn: Int
    let discount: Int
    let endDate: String
}

typealias CouponDatas = [CouponData]
