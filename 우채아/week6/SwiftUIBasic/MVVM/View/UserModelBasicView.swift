//
//  UserModelBasicView.swift
//  SwiftUIBasic
//
//  Created by 우채아 on 5/18/26.
//

import SwiftUI

struct UserModelBasicView: View {
    
    // property
    @State var users: [UserModel] = [
        UserModel(displayName: "철수", userName: "철수123", followerCount: 100, isChecked: true),
        UserModel(displayName: "영희", userName: "영희사랑", followerCount: 55, isChecked: false),
        UserModel(displayName: "길동", userName: "홍길동", followerCount: 300, isChecked: false),
        UserModel(displayName: "한나", userName: "황한나", followerCount: 80, isChecked: true)
    ]
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack (spacing: 20) {
                        // uuid 출력하기
//                        Text(user.id)
                        
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack (alignment: .leading, spacing: 5) {
                            
                            Text(user.displayName)
                                .font(.headline)
                            
                            Text("@\(user.userName)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        } //: VSTACK
                        
                        Spacer()
                        
                        if user.isChecked {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        } //: VSTACK
                    } //: HSTACK
                    .padding(.vertical, 10)
                } //: LOOP
            } //: LIST
            .navigationTitle("회원 리스트")
        } //: NAVIGATION
    }
}

#Preview {
    UserModelBasicView()
}
