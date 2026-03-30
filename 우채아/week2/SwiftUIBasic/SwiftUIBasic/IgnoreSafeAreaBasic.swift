//
//  IgnoreSafeAreaBasic.swift
//  SwiftUIBasic
//
//  Created by 우채아 on 3/29/26.
//

import SwiftUI

struct IgnoreSafeAreaBasic1: View {
    var body: some View {
        // 1번 화면
        ZStack {
            // background
            Color.blue
                .ignoresSafeArea()
            
            // content
            VStack {
                Text("Hello, World!")
                    .font(.largeTitle)
            }
        }
        

    }
}

struct IgnoreSafeAreaBasic2: View {
    var body: some View {
        // 2번 화면
        ScrollView {
            VStack {
                Text("박스형 리스트")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                
                ForEach(1..<11) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                        .overlay(
                            Text("\(index) 번 리스트")
                        )
                }
            }
        }
        .background(
            Color.blue
                .ignoresSafeArea()
        )
    }
}

#Preview {
   IgnoreSafeAreaBasic1()
}

#Preview {
   IgnoreSafeAreaBasic2()
}
