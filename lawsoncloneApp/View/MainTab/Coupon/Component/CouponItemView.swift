//
//  CouponItemView.swift
//  lawsoncloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/30.
//

import SwiftUI

struct CouponItemView: View {
    // MARK: - プロパティー
    var image: String

    // MARK: - ボディー

    var body: some View {
        VStack {
            HStack {
                Text("何度でも使える")
                    .foregroundColor(.blue)
                    .padding(3)
                    .padding(.horizontal, 5)
                    .fontWeight(.semibold)
                    .font(.caption)
                    .background(Color(uiColor: .systemGray6))
                .clipShape(.capsule)
                Spacer()
            }

            HStack (alignment: .bottom) {

                VStack {
                    HStack {
                        Image(image)
                            .resizable()
                        .frame(width: 200, height: 150)
                        .padding(.trailing, 5)
                        HStack(alignment: .top, spacing: 0) {
                            VStack(spacing: 0) {
                                Text("【100円引】昼食時間帯におにぎりの購入を促すための割引です。")
                                    .padding(.vertical)


                                HStack(alignment: .bottom, spacing: 1) {
                                    Spacer()
                                    Text("100")
                                        .font(.title)
                                        .fontWeight(.semibold)
                                    Text("円引")
                                        .font(.footnote)
                                        .fontWeight(.semibold)
                                        .padding(.bottom, 2)

                                }
                            }

                        }
                    }


                    HStack {
                        Text("有効期限")
                            .fontWeight(.semibold)
                            .foregroundStyle(.gray)

                        Text("2023/12/4(月)")
                            .fontWeight(.light)

                        Spacer()
                    }
                    .font(.system(size: 14))
                }
                .padding(.trailing, 5)


            }

            Line()
                .stroke(style: .init(dash: [4, 3]))
                .foregroundColor(.gray)
                .frame(height: 0.5)
                .padding(.horizontal, 1)

            HStack {
                Button {

                } label: {
                    HStack(spacing: 0) {
                        Image(systemName: "lines.measurement.horizontal")
                        Text("詳細")
                            .foregroundStyle(.black)
                    }

                    Spacer()

                    HStack(spacing: 0) {
                        Image(systemName: "paperclip")
                        Text("保存")
                            .foregroundStyle(.black)
                    }

                }
            }
            .padding(.horizontal, 30)
            .padding()
        }
        .padding()
        .background(Rectangle().fill(Color.white))
        .cornerRadius(10)

    }//: ボディー
}

#Preview {
    CouponItemView(image: TestData.shared.couponItems[0])
        .background(Color.black)
        .padding()
}
