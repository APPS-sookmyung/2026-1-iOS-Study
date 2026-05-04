//
//  ColorPickerBasic.swift
//  SwiftUIBasic
//
//  Created by 우채아 on 5/4/26.
//

import SwiftUI

struct ColorPickerBasic: View {
    // property
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            // background
            backgroundColor.ignoresSafeArea()
            
            ColorPicker(selection: $backgroundColor, supportsOpacity: false) {
                Text("원하는 색을 고르세요")
                
            }
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        } // : ZStack
    }
}

#Preview {
    ColorPickerBasic()
}
