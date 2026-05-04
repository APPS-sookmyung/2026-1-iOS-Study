//
//  NavigationBasic.swift
//  SwiftUIBasic
//
//  Created by 우채아 on 5/4/26.
//

import SwiftUI

struct NavigationBasic: View {
    
    // property
    @State private var showSheet: Bool = false
    
    var body: some View {
        // 1. NavigationView 대신 NavigationStack 사용 (iOS 16+)
        NavigationStack {
            VStack {
                // 2. NavigationLink 사용 방식
                NavigationLink {
                    // 목적지 뷰
                    SecondNavigationView()
                } label: {
                    Text("Second Navigation 이동")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            } // : VStack
            // 3. 네비게이션 설정
            .navigationTitle("페이지 제목")
            // .automatic, .inline, .large 중 선택
            .navigationBarTitleDisplayMode(.automatic)
            
            // 4. Toolbar 사용 (기존 navigationBarItems 대체)
            .toolbar {
                // 왼쪽 아이템
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        // 액션 추가 가능
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
                
                // 오른쪽 아이템
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showSheet.toggle()
                    } label: {
                        Image(systemName: "gear")
                    }
                }
            }
        } // : NavigationStack
        // 5. 시트 설정
        .sheet(isPresented: $showSheet) {
            SettingsView() // 가독성을 위해 별도 뷰로 분리 권장
        }
    }
}

// 설정을 위한 샘플 뷰
struct SettingsView: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Text("설정 페이지 입니다")
                .font(.largeTitle)
                .bold()
        }
    }
}

// 이동할 샘플 뷰
struct SecondNavigationView: View {
    var body: some View {
        Text("두 번째 페이지")
            .navigationTitle("두 번째")
    }
}

#Preview {
    NavigationBasic()
}
