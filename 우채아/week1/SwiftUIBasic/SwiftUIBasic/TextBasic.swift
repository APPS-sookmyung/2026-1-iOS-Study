//
//  TextBasic.swift
//  SwiftUIBasic
//
//  Created by 우채아 on 3/19/26.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        
        VStack(spacing: 20) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title)
                .fontWeight(.semibold)
                .underline(true, color: Color.red)
                .italic(true)
                .strikethrough(true)
            
            Text("Hello, World!2".uppercased())
                .font(.system(size: 25))
            
            Text("멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. ")
                .multilineTextAlignment(.leading)
                .foregroundStyle(Color.blue)
        }
        
    }
}

#Preview {
    TextBasic()
}
