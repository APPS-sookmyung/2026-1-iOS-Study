//
//  ListBasic.swift
//  SwiftUIBasic
//
//  Created by 우채아 on 5/4/26.
//

import SwiftUI

struct ListBasic: View {
    // property
    @State var fruits: [String] = [
        "사과", "오렌지", "바나나", "수박"
    ]
    
    @State var meats: [String] = [
        "소고기", "돼지고기", "닭고기"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    // content
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                } header: {
                    Text("과일종류")
                        .font(.headline)
                        .foregroundColor(.red)
                } // : Section
                
                Section {
                    // content
                    ForEach(meats, id: \.self) { meat in
                        Text(meat)
                    }
                } header: {
                    Text("고기종류")
                        .font(.headline)
                        .foregroundColor(.red)
                }
                
                
            } // : List
            .navigationTitle("우리동네 마트")
            .navigationBarTitleDisplayMode(.inline)
            
            
            // MARK: - navigationBarItems -> .toolbar
            //            .navigationBarItems(leading: EditButton(), trailing: addButton) // iOS 16 NavigationStack 이후 사용 권장 되지 않음
            
            // 대신 .toolbar{} 사용 -> iOS 16 이후 부터 사용
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    addButton
                }
                
            }
        } // :Navigation
    } // :Body
    
    // Fuction
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    var addButton: some View {
        Button {
            fruits.append("딸기")
        } label: {
            Text("Add")
        }
        
    }
}

#Preview {
    ListBasic()
}
