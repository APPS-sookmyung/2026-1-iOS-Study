//
//  SheetBasic2.swift
//  SwiftUIBasic
//
//  Created by 우채아 on 5/4/26.
//

import SwiftUI

struct SheetBasic2: View {
    
    // property
    @Environment(\.presentationMode) var presentaionMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            // background
            Color.red.ignoresSafeArea()
            
            // contents
            Button {
                // Sheet 닫기 action
                presentaionMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            }

        }
    }
}

#Preview {
    SheetBasic2()
}
