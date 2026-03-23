//
//  FrameBasic.swift
//  SwiftUIBasic
//
//  Created by 우채아 on 3/21/26.
//

import SwiftUI

struct FrameBasic: View {
    var body: some View {
        //1
        VStack (spacing: 20) {
            Text("Hello, World!")
                .font(.title)
                .background(Color.green)
                .frame(width: 200, height: 200, alignment: .center)
                .background(Color.red)
        
        Divider()
        // 2
            Text("Hello, World!")
                .font(.title)
                .background(Color.green)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.red)
                
        }
    }
}

#Preview {
    FrameBasic()
}
