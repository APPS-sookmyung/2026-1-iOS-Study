//
//  ShapeBasic.swift
//  SwiftUIBasic
//
//  Created by 배송이 on 3/23/26.
//

import SwiftUI

struct ShapeBasic: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {

                VStack(spacing: 20) {

                    // circle 원형
                    Text("원형")
                        .font(.title)

                    Circle()
                        //.fill(Color.blue)
                        //.foregroundColor(.pink)
                        //.stroke(Color.red, lineWidth: 20)
                        //.stroke(Color.purple, style: StrokeStyle(lineWidth: 30, lineCap: .butt, dash: [30]))
                        .trim(from: 0.2, to: 1.0)
                        .stroke(Color.purple, lineWidth: 50)
                        .frame(width: 200, height: 100)
                        .padding()

                    // Ellipse 타원형
                    Text("타원형")
                        .font(.title)

                    Ellipse()
                        .fill(Color.green)
                        .frame(width: 200, height: 100)

                    // 캡슐형
                    Text("캡슐형")
                        .font(.title)

                    Capsule(style: .circular)
                        .stroke(Color.blue, lineWidth: 30)
                        .frame(width: 200, height: 100)
                }

                VStack(spacing: 20) {

                    // 직사각형
                    Text("직사각형")
                        .font(.title)

                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 200, height: 100)

                    // 둥근직사각형
                    Text("둥근직사각형")
                        .font(.title)

                    RoundedRectangle(cornerRadius: 20)
                        .trim(from: 0.4, to: 1.0)
                        .frame(width: 300, height: 200)
                }
            }
        }
    }
}

struct ShapeBasic_Previews: PreviewProvider {
    static var previews: some View {
        ShapeBasic()
    }
}
