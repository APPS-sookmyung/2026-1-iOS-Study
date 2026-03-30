//
//  StackBasic.swift
//  SwiftUIBasic
//
//  Created by 우채아 on 3/27/26.
//

import SwiftUI

struct StackBasic1: View {
    
    var body: some View {
        // 1.VStack
        VStack(alignment: .leading, spacing: 20) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 150, height: 150)
            
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
    }
}

struct StackBasic2: View {
    var body: some View {
        // 2.HStack
        HStack(spacing: 20) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
    }
}

struct StackBasic3: View {
    var body: some View {
        // 3.Zstack
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 150, height: 150)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 130, height: 130)
            
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
    }
}

struct StackBasic4: View {
    var body: some View {
        // 4. Stack 응용
        ZStack (alignment: .top) {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500)
            
            VStack(alignment: .leading, spacing: 30) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom, spacing: 10) {
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 75, height: 75)
                    
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 25, height: 25)
                }
                .background(Color.white)
            }
            .background(Color.black)
        }
    }
}

struct StackBasic5: View {
    var body: some View {
        // 5.ZStack vs Background
        
        VStack(spacing: 50) {
            // ZStack
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            // Background
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

#Preview("1.VStack") {
    StackBasic1()
}


#Preview("2.HStack") {
    StackBasic2()
}


#Preview("3.ZStack") {
    StackBasic3()
}


#Preview("4.Stack 응용") {
    StackBasic4()
}


#Preview("5.ZStack VS Background") {
    StackBasic5()
}
