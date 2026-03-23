//
//  ImageBasic.swift
//  SwiftUIBasic
//
//  Created by 우채아 on 3/21/26.
//

import SwiftUI

struct ImageBasic: View {
    var body: some View {
        VStack (spacing: 20) {
            Image("image")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .cornerRadius(150)
            
            Divider()
            
            Image("image")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .clipShape(Circle())
        }
    }
}

#Preview {
    ImageBasic()
}
