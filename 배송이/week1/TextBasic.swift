//
//  TextBasic.swift
//  SwiftUIBasic
//
//  Created by 배송이 on 3/23/26.
//

import SwiftUI

struct TextBasic: View{
    var body: some View{
        VStack(spacing: 20){
            Text("Hello world!")
                .font(.title)
                .fontWeight(.semibold)
                .bold()
                .underline(true, color: Color.red)
                .italic()
                .strikethrough(true, color: Color.green)
            
            Text("Hello world2".uppercased())
                .font(.system(size: 25, weight:.semibold,design: .serif))
            
            Text("멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다.")
                .multilineTextAlignment(.leading)
                .foregroundColor(.red)
        }
    }
}

struct TextBasic_Previews: PreviewProvider{
    static var previews: some View {
        TextBasic()
    }
}
