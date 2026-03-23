//
//  GradientBasic.swift
//  SwiftUIBasic
//
//  Created by 배송이 on 3/23/26.
//


import SwiftUI

struct GradientBasic: View {
    var body: some View {
        VStack(spacing: 20) {

            Text("Linear Gradient")
                .font(.title2)

            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]),
                        startPoint: .topLeading,
                        endPoint: .bottom
                    )
                )
                .frame(width: 300, height: 200)

            // MARK: - Radial Gradient (방사형)
            Text("Radial Gradient")
                .font(.title2)

            RoundedRectangle(cornerRadius: 25)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [Color.yellow, Color.purple]),
                        center: .leading,
                        startRadius: 5,
                        endRadius: 300
                    )
                )
                .frame(width: 300, height: 200)

            Text("Angular Gradient")
                .font(.title2)

            RoundedRectangle(cornerRadius: 25)
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [Color.blue, Color.green]),
                        center: .topLeading,
                        angle: .degrees(180 + 45)
                    )
                )
                .frame(width: 300, height: 200)
        }
    }
}

struct GradientBasic_Previews: PreviewProvider {
    static var previews: some View {
        GradientBasic()
    }
}
