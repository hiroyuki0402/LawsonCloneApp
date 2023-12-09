//
//  CouponViewModel.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/12/07.
//

import SwiftUI

class CouponViewModel: ObservableObject {
    @Published var originalCouponDatas: CouponDatas = []

    init() {
        lodaData()
    }


    private func lodaData() {
        originalCouponDatas = TestData.shared.couponData
    }

    func getCoupons(item: ItemType) -> CouponDatas {
        switch item {
        case .coupon:
            return originalCouponDatas.filter({ $0.kbn == item.rawValue})
        case .exchange:
            return originalCouponDatas.filter({ $0.kbn == item.rawValue})
        }
    }

    func getCouponData(at index: Int) -> CouponData {
        return originalCouponDatas[index]
    }
}

