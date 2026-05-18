//
//  StepperBasic.swift
//  SwiftUIBasic
//
//  Created by 우채아 on 5/10/26.
//

import SwiftUI

struct StepperBasic: View {
    // property
    @State var stepperValue: Int = 0
    @State var widthChange: CGFloat = 0
    
    
    var body: some View {
        VStack {
            Stepper("기본 Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            Divider()
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthChange, height: 100)
            
            Stepper("직사각형 너비 변화") {
                // + 를 누를때 변화되는것
                differentWidth(amount: 20)
            } onDecrement: {
                // - 누를때 변화
                differentWidth(amount: -20)
            }
            
        }// :VStack
    }
    
    // function
    func differentWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthChange += amount
        }
    }
}

#Preview {
    StepperBasic()
}
