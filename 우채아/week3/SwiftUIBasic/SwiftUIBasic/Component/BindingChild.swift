//
//  BindingChild.swift
//  SwfitUIBasic
//
//  Created by 우채아 on 4/27/26.
//

import SwiftUI

struct BindingChild: View {
    // property
    @State var buttonColor: Color = Color.blue
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    var body: some View {
        Button  {
            // action
            backgroundColor = Color.orange
            buttonColor = Color.pink
            title = "Binding Child View"
        } label: {
            Text("Child View 이동")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }

    }
}

#Preview(traits: .sizeThatFitsLayout) {
    BindingChild(backgroundColor: .constant(Color.orange), title: .constant("Binding Child"))
        
}
