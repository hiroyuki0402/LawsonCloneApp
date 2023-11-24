//
//  APIManager.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/24.
//

import Foundation

final class APIManager {

    /// APIManagerのシングルトンインスタン
    static let shred = APIManager()


    /// 指定されたURLからデータを非同期に取得し、指定された型にデコードする
    /// - Parameters:
    ///   - url: データを取得するためのURL。このURLがnilの場合、メソッドはエラーを投げる
    ///   - type: デコードする対象の型。この型はCodableプロトコルに準拠している必要がある
    /// - Returns: デコードされたデータ。データが存在しない、またはデコードに失敗した場合はnilを返す
    /// - Throws: ネットワークエラーまたはデコードエラー。URLがnilであるか、HTTPステータスコードが200範囲外である場合、またはデータのデコードに失敗した場合にエラーを投げる。
    func callAPI<T: Codable>(withUrl url: URL?, type: T.Type) async throws -> T? {
        /// URLがnilの場合はエラーを投げる
        guard let url = url else {
            throw URLError(.badURL)
        }

        /// URLセッションを使用してデータを取得
        let (data, response) = try await URLSession.shared.data(from: url)

        /// レスポンスがHTTPURLResponseであり、ステータスコードが200範囲内であることを確認
        guard let httpResponse = response as? HTTPURLResponse, 200...299 ~= httpResponse.statusCode else {
            throw URLError(.badServerResponse)
        }

        /// データを指定された型にデコード
        let decodedData = try JSONDecoder().decode(type.self, from: data)
        return decodedData
    }
}
