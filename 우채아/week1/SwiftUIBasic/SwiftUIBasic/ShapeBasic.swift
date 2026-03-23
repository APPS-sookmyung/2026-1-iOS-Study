//
//  ShapeBasic.swift
//  SwiftUIBasic
//
//  Created by 우채아 on 3/21/26.
//

import SwiftUI

struct ShapeBasic: View {
    var body: some View {
        VStack (spacing:20) {
            // circle
            Text("Circle")
                .font(.title)
            Circle()
//                .fill(Color.blue)
//                .foregroundColor(.pink)
                .stroke(Color.red, lineWidth: 20)
                .frame(width: 100, height: 100)
                .padding()
                
            Text("타원형")
                .font(Font.title)
            Ellipse()
                .fill(Color.blue)
                .frame(width: 200, height: 100, alignment: .center)
            
            Text("capsule")
                .font(.title)
            Capsule()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                
        }
        
        VStack(spacing: 20) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 100, alignment: .center)
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 200, height: 100, alignment: .center)
        }
    }
}

#Preview {
    ShapeBasic()
}
