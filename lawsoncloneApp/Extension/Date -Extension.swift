//
//  Date -Extension.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/12/07.
//

import Foundation

enum DateFormat {
    case yyyyMMdd

    func format() -> String {
        switch self {
        case .yyyyMMdd:
            return "yyyy-MM-dd"
        }
    }
}


extension DateFormatter {

    /// 指定された日付の始まり（その日の0時0分0秒）を返すメソッド
    /// - Parameter date: 始まりの日時を取得するための日付
    /// - Returns: 指定された日付の0時0分0秒の時点での`Date`オブジェクト
    static func startOfDay(for date: Date) -> Date {
        return Calendar.current.startOfDay(for: date)
    }

    /// 指定された日付文字列が現在から指定された日数以内かどうかを判断する
    /// - Parameters:
    ///   - releaseDateString: チェックする日付文字列
    ///   - format: 日付のフォーマット
    ///   - days: 現在日からの日数
    /// - Returns: 指定された日数以内であればtrue, そうでなければfalse
    static func isWithinDays(from releaseDateString: String, format: DateFormat, days: Int) -> Bool {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format.format()

        guard let releaseDate = dateFormatter.date(from: releaseDateString) else {
            return false
        }

        let currentDate = Date()

        if let targetDate = Calendar.current.date(byAdding: .day, value: days, to: releaseDate) {
            return currentDate <= targetDate
        }

        return false
    }
    /// 指定された終了日から指定された日数以内かどうかを判断し、残り日数も返す
    /// - Parameters:
    ///   - endDateString: 終了日の日付文字列
    ///   - format: 日付のフォーマット
    ///   - days: 終了日からの日数
    /// - Returns: 終了日が指定された日数以内であれば(true, 残り日数)、そうでなければ(false, nil)
    static func isWithinDaysToEndDate(from endDateString: String, format: DateFormat, days: Int) -> (Bool, Int?) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format.format()

        guard let endDate = dateFormatter.date(from: endDateString) else {
            return (false, nil)
        }

        let currentDate = startOfDay(for: Date())

        if let thresholdDate = Calendar.current.date(byAdding: .day, value: -days, to: endDate),
           currentDate >= thresholdDate {
            let remainingDays = Calendar.current.dateComponents([.day], from: currentDate, to: endDate).day ?? 0
            return (true, remainingDays)
        }

        return (false, nil)
    }
}
