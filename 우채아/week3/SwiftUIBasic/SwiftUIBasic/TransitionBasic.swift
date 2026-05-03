//
//  TransitionBasic.swift
//  SwfitUIBasic
//
//  Created by 우채아 on 4/27/26.
//

import SwiftUI

struct TransitionBasic: View {
    @State var showTrasition: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button {
                    withAnimation(.easeInOut) {
                        showTrasition.toggle()
                    }
                } label: {
                    Text("Button")
                }
                
                Spacer()
            }
            
            if showTrasition {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .opacity(showTrasition ? 1.0 : 0.0)
                
                // 1번 move transition
                    // .transition(.move(edge: .bottom))
                
                // 2번 opacity transition
                    // .transition(.opacity)
                
                // 3번 scale transition
                    // .transition(.scale)
                
                // 4번 asymmetric transtion
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: .move(edge: .trailing)))
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionBasic()
}
