//
//  TernaryBasic.swift
//  SwfitUIBasic
//
//  Created by 우채아 on 4/27/26.
//

import SwiftUI

struct TernaryBasic: View {
    @State var isStaringState: Bool = false
    
    var body: some View {
        VStack {
            // 1. if else 조건문
            Button {
                isStaringState.toggle()
            } label: {
                Text("if else 버튼: \(isStaringState.description)")
            }
            
            if isStaringState {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.red)
                    .frame(width: 200, height: 100)
            } else {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.blue)
                    .frame(width: 200, height: 100)
            }
            
            
            // 2. 삼항연산자
            Button {
                isStaringState.toggle()
            } label: {
                Text("삼항연산자 버튼: \(isStaringState.description)")
            }
            
            Text(isStaringState ? "빨강" : "파랑")
            
            // if isStaringState {
            //     Text("빨강")
            // } else {
            //     Text("파랑")
            // }
            
            RoundedRectangle(cornerRadius: isStaringState ? 25.0 : 0)
                .fill(isStaringState ? Color.red : Color.blue)
                .frame(
                    width: isStaringState ? 200 : 50,
                    height: isStaringState ? 400 : 100
                )
            Spacer()
        }
    }
}

#Preview {
    TernaryBasic()
}
