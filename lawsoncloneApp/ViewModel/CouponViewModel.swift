//
//  CouponViewModel.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/12/07.
//

import SwiftUI

class CouponViewModel:  ObservableObject {
    @Published var couponDatas: CouponDatas = []

    init() {
        lodaDate()
    }


    private func lodaDate() {
        couponDatas = TestData.shared.couponData
    }

    func getCouponData(at index: Int) -> CouponData {
        return couponDatas[index]
    }
}

