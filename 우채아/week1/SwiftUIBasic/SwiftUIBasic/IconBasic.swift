//
//  IconBasic.swift
//  SwiftUIBasic
//
//  Created by 우채아 on 3/21/26.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack (spacing: 20) {
            Image(systemName: "person.fill.badge.plus")
                .resizable()
            // redermode 에서 original 로 하게되면 실제 color 에서 multi color로 변경됨
            // 즉 고유 값 걸러로 변경되어서 color 를 변경하더라도 변경되지 않는 컬러 값이 됨
                .renderingMode(.original)
                .scaledToFill()
                .foregroundColor(Color.red)
                .frame(width: 300, height: 300)
        }
    }
}

#Preview {
    IconBasic()
}
