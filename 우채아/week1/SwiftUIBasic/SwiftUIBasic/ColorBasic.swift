//
//  ColorBasic.swift
//  SwiftUIBasic
//
//  Created by 우채아 on 3/21/26.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            
            //Basic Color
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.purple)
            
            //Primary Color
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.secondary)
            
            //UIColor
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(UIColor.secondarySystemBackground))
        }
    }
}

#Preview {
    ColorBasic()
}
