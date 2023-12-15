//
//  CouponViewModel.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/12/07.
//

import SwiftUI
import FirebaseFirestore
import FirebaseFirestoreSwift

class CouponViewModel: ObservableObject {
    @Published var originalCouponDatas: CouponDatas = []
    @Published var coupondatas2: CouponDatas2 = []

    init() {
        Task {
             await fetchCouponsFromFirestore()
        }
        lodaData()
    }


    private func lodaData() {
        originalCouponDatas = TestData.shared.couponData
    }

    @MainActor
    private func fetchCouponsFromFirestore() {
        Task {
            do {
                coupondatas2 = try await APIManager.shred.fetchFirestoreCollection(fromCollectionPath: "acquiredCoupons", as: CouponData2.self)
                print(coupondatas2)
            } catch {
                // エラーハンドリング
                print(error)
            }
        }
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

    func filteredItems(for genre: GenreItem) -> CouponDatas2 {
        switch genre {
        case .all:
            return coupondatas2
        case .pan, .bento, .chukaman, .desert, .men, .others, .currentUser, .ls100:
            return coupondatas2.filter { $0.genre == genre.rawValue }
        }
    }
}

