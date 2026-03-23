//
//  ImageBasic.swift
//  SwiftUIBasic
//
//  Created by 배송이 on 3/23/26.
//

import SwiftUI

struct ImageBasic: View {
    var body: some View {
        VStack(spacing: 20) {

            // 기본 원형 처리 (cornerRadius)
            Image("nature")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .cornerRadius(150)

            Divider()

            // 완전 원형 (clipShape)
            Image("-13")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .clipShape(Circle())
        }
    }
}

struct ImageBasic_Previews: PreviewProvider {
    static var previews: some View {
        ImageBasic()
    }
}
