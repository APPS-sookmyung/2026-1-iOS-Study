//
//  ItemBasic.swift
//  SwfitUIBasic
//
//  Created by 우채아 on 4/27/26.
//

import SwiftUI

struct ItemBasic: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

#Preview {
    ItemBasic(title: "사과", count: 0, color: .red)
}
