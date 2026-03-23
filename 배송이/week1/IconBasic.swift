//
//  IconBasic.swift
//  SwiftUIBasic
//
//  Created by 배송이 on 3/23/26.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack(spacing: 20) {

            Image(systemName: "person.fill.badge.plus")
                .resizable()
                // original로 하면 원래 멀티컬러 유지됨
                .renderingMode(.original)
                .scaledToFill()
                .foregroundColor(.red)
                .frame(width: 300, height: 300)
        }
    }
}

struct IconBasic_Previews: PreviewProvider {
    static var previews: some View {
        IconBasic()
    }
}
